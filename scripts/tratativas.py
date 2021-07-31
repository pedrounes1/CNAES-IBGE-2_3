import requests
import time
import os
import pandas as pd

URL = "https://servicodados.ibge.gov.br/api/v2/cnae/"

DIR = os.path.dirname(__file__)


def p(arquivo: str):
    """Função para gerar o path (por isso p) para abrir e exportar os arquivos. `p` é mais curto que "`os.path.join(DIR, "../nome_do_arquivo"`

    Args:
        arquivo (str): nome do arquivo com extensão a ser aberto/salvo

    Returns:
        StrPath: Caminho completo para o arquivo, considerando a constante `DIR`.
    """
    return os.path.join(DIR, f'../{arquivo}')


def getDados(categoria: str):
    """Função usada para coletar os dados diretamente na API do IBGE.

    Args:
        categoria (str): Nome da categoria a ser consultada. As opções estão na função `criaArquivos()`
    """
    resposta = requests.get(URL + categoria).json()

    if categoria != 'secoes':
        # Preciso pegar o id da categoria superior.
        for item in resposta:
            # Crio as variaveis para verificar os dados da categoria superior
            parent_id = parent = ''
            for k, v in item.items():   # k: Chave, v: Valor
                if type(v) == dict:     # Verifico se o valor é dict e pego seu id
                    if 'id' in item[k].keys():
                        parent = k + '_id'
                        parent_id = item[k]['id']
            item[parent] = parent_id

    resposta = pd.DataFrame(resposta)

    if categoria != 'secoes':  # Como secoes é a categoria root, ela não possui pai
        resposta = resposta[['id', 'descricao', parent]]
    else:
        resposta = resposta[['id', 'descricao']]

    # As subclasses retornam vários valores, uma vez que possuem as atividades econômicas.
    resposta = resposta.drop_duplicates()

    # Crio CSV
    resposta.to_csv(p(f'./csv/{categoria}.csv'), index=False)

    # Crio JSON
    resposta.to_json(p(f'./json/{categoria}.json'), orient='records', force_ascii=False)

    # Crio SQL:
    # A criação do arquivo SQL é a mais problemática, uma vez que o pandas não consegue exportar os dados diretamente para um arquivo .SQL.
    # Poderia inserir os dados diretamente num banco de dados usando o método `.to_sql` do pandas, mas prefiro criar manualmente o .SQL como uma string

    # Caso eu tenha uma categoria acima, preciso criar a FK e a constraint para a categoria acima.
    if categoria != 'secoes':
        # Defino o plural. Divisao e sessao perdem os dois ultimos caracteres e ganham 'oes'.
        parent_plural = parent[:-3] + 's' if parent[: -3] in ['grupo', 'classe'] else parent[:-5] + 'oes'
        fk = f'{parent} {"CHAR(1)" if categoria == "divisoes" else "INT"} NOT NULL,'
        constraint = f'PRIMARY KEY (id), \n FOREIGN KEY ({parent_plural}) REFERENCES {parent[:-3]} (id)'
    else:
        fk = ''
        constraint = 'PRIMARY KEY (id)'

    sql = f'''CREATE TABLE cnae_{categoria}(
    id {'CHAR(1)' if categoria == 'sessoes' else 'INT'} NOT NULL,
    descricao  VARCHAR(100) NOT NULL,
    {fk}

    {constraint});

INSERT INTO cnae_{categoria} VALUES\n'''
    if categoria == 'secoes':  # secoes não tem parent
        for dado in resposta.to_dict(orient='records'):
            sql += f"('{dado['id']}', '{dado['descricao']}'),\n"
    elif categoria == 'divisoes':  # Pra divisões, o parent é secoes, que o ID é string
        for dado in resposta.to_dict(orient='records'):
            sql += f"({dado['id']}, '{dado['descricao']}', '{dado[parent]}'),\n"
    else:
        for dado in resposta.to_dict(orient='records'):
            sql += f"({dado['id']}, '{dado['descricao']}', {int(dado[parent])}),\n"

    # Removo a ultima virgula e coloco um ; no lugar
    sql = sql[:-2] + ";"

    sql = sql.replace('    ', '')  # Tiro os espaços em branco
    with open(p(f'./sql/{categoria}.sql'), 'w+', encoding='utf-8') as file:
        file.write(sql)

    print(f'{categoria} processada com sucesso! {len(resposta)} registros, {resposta["id"].nunique()} registros unicos')


def criaArquivos():
    for categoria in ['secoes', 'divisoes', 'grupos', 'classes', 'subclasses']:
        print('Aguardando 2 segundos...')  # para não ser bloqueado pela API.
        time.sleep(2)
        print('Pronto!')
        getDados(categoria)
    print('Finalizado!')


if __name__ == '__main__':
    criaArquivos()

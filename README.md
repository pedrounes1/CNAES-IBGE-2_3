# Cadastro Nacional de Atividades Econômicas (CNAEs) | IBGE | v.2.3

Reposítorio com a estrutura das Seções, Divisões, Grupos, Classes e Subclasses do Cadastro Nacional de Atividades Econômicas (CNAEs) organizados em arquivos `json`, `csv` e `SQL`, devidamente organizados.

Os dados foram obtidos diretamente na [API do IBGE](https://servicodados.ibge.gov.br/api/docs/cnae?versao=2) e tratados utilizando Python.

De acordo com o próprio IBGE, o CNAE trata-se de
> uma classificação organizada de forma hierárquica com cinco níveis, 21 seções, 87 divisões, 285 grupos, 673 classes e 1301 subclasses. **As subclasses são definidas para uso da Administração Pública.**

*Nota: A versão 2.3 das CNAEs contam com 1.332 subclasses.*
```
 1. Seção
   2. Divisão
     3. Grupo
       4. Classe
         5. Subclasse
           6. Atividade econômica
```

Neste repositório, os dados vão até as Subclasses. As atividades econômicas ficaram de fora, bem como as observações de cada uma das categorias.

Os dados estão atualizados até 31/07/2021. Caso novas cnaes sejam criadas após essa data, pode-se usar os scripts de tratativas disponíveis em `scripts/tratativas`.

A estrutura dos dados e do readme foi inspirada no repositório de [Municipios Brasileiros do kelvins](https://github.com/kelvins/Municipios-Brasileiros)

## Exemplos

### Exemplo SQL

#### Seção

```sql

CREATE TABLE cnae_secoes(
id INT NOT NULL,
descricao  VARCHAR(100) NOT NULL,

PRIMARY KEY id);

INSERT INTO secoes VALUES
('A', 'AGRICULTURA, PECUÁRIA, PRODUÇÃO FLORESTAL, PESCA E AQÜICULTURA'),
('B', 'INDÚSTRIAS EXTRATIVAS'),
('C', 'INDÚSTRIAS DE TRANSFORMAÇÃO'),
('D', 'ELETRICIDADE E GÁS'),
```
#### Divisão

```sql
CREATE TABLE cnae_divisoes(
id INT NOT NULL,
descricao  VARCHAR(100) NOT NULL,
secao_id CHAR(1) NOT NULL,

PRIMARY KEY id,
 FOREIGN KEY (secoes) REFERENCES secao (id));

INSERT INTO divisoes VALUES
(01, 'AGRICULTURA, PECUÁRIA E SERVIÇOS RELACIONADOS', 'A'),
(02, 'PRODUÇÃO FLORESTAL', 'A'),
(03, 'PESCA E AQÜICULTURA', 'A'),
(05, 'EXTRAÇÃO DE CARVÃO MINERAL', 'B'),
```
#### Grupo
```sql
CREATE TABLE cnae_grupos(
    id INT NOT NULL,
    descricao  VARCHAR(100) NOT NULL,
    divisao_id INT NOT NULL,

    PRIMARY KEY id,
    FOREIGN KEY (divisoes) REFERENCES divisao (id));

INSERT INTO grupos VALUES
(011, 'PRODUÇÃO DE LAVOURAS TEMPORÁRIAS', 01),
(012, 'HORTICULTURA E FLORICULTURA', 01),
(013, 'PRODUÇÃO DE LAVOURAS PERMANENTES', 01),
(014, 'PRODUÇÃO DE SEMENTES E MUDAS CERTIFICADAS', 01),
```
#### Classe
```sql
CREATE TABLE cnae_classes(
    id INT NOT NULL,
    descricao  VARCHAR(100) NOT NULL,
    grupo_id INT NOT NULL,

    PRIMARY KEY id,
     FOREIGN KEY (grupos) REFERENCES grupo (id));

INSERT INTO classes VALUES
(01113, 'CULTIVO DE CEREAIS', 011),
(01121, 'CULTIVO DE ALGODÃO HERBÁCEO E DE OUTRAS FIBRAS DE LAVOURA TEMPORÁRIA', 011),
(01130, 'CULTIVO DE CANA-DE-AÇÚCAR', 011),
(01148, 'CULTIVO DE FUMO', 011)
```
#### Subclasse
```sql
CREATE TABLE cnae_subclasses(
    id INT NOT NULL,
    descricao  VARCHAR(100) NOT NULL,
    classe_id INT NOT NULL,

    PRIMARY KEY id,
    FOREIGN KEY (classes) REFERENCES classe (id));

INSERT INTO subclasses VALUES
(4929902, 'TRANSPORTE RODOVIÁRIO COLETIVO DE PASSAGEIROS, SOB REGIME DE FRETAMENTO, INTERMUNICIPAL, INTERESTADUAL E INTERNACIONAL', 49299),
(1610204, 'SERRARIAS SEM DESDOBRAMENTO DE MADEIRA EM BRUTO - RESSERRAGEM', 16102),
(1610203, 'SERRARIAS COM DESDOBRAMENTO DE MADEIRA EM BRUTO', 16102),
(4623105, 'COMÉRCIO ATACADISTA DE CACAU', 46231)
...

```
### Exemplo JSON

#### Seção
```json
    [{
        "id": "A",
        "descricao": "AGRICULTURA, PECUÁRIA, PRODUÇÃO FLORESTAL, PESCA E AQÜICULTURA"
    },
    {
        "id": "B",
        "descricao": "INDÚSTRIAS EXTRATIVAS"
    },{
        "id": "C",
        "descricao": "INDÚSTRIAS DE TRANSFORMAÇÃO"
    },
    ]
```

#### Divisão
```json
[
    {
        "id": "01",
        "descricao": "AGRICULTURA, PECUÁRIA E SERVIÇOS RELACIONADOS",
        "secao_id": "A"
    },
    {
        "id": "02",
        "descricao": "PRODUÇÃO FLORESTAL",
        "secao_id": "A"
    },
    {
        "id": "03",
        "descricao": "PESCA E AQÜICULTURA",
        "secao_id": "A"
    },
]
```

#### Grupo
```json
[
    {
        "id": "011",
        "descricao": "PRODUÇÃO DE LAVOURAS TEMPORÁRIAS",
        "divisao_id": "01"
    },
    {
        "id": "012",
        "descricao": "HORTICULTURA E FLORICULTURA",
        "divisao_id": "01"
    },
    {
        "id": "013",
        "descricao": "PRODUÇÃO DE LAVOURAS PERMANENTES",
        "divisao_id": "01"
    }
]
```

#### Classe
```json
[
    {
        "id": "01113",
        "descricao": "CULTIVO DE CEREAIS",
        "grupo_id": "011"
    },
    {
        "id": "01121",
        "descricao": "CULTIVO DE ALGODÃO HERBÁCEO E DE OUTRAS FIBRAS DE LAVOURA TEMPORÁRIA",
        "grupo_id": "011"
    },
    {
        "id": "01130",
        "descricao": "CULTIVO DE CANA-DE-AÇÚCAR",
        "grupo_id": "011"
    }
]
```

#### Subclasse
```json
[
    {
        "id": "4929902",
        "descricao": "TRANSPORTE RODOVIÁRIO COLETIVO DE PASSAGEIROS, SOB REGIME DE FRETAMENTO, INTERMUNICIPAL, INTERESTADUAL E INTERNACIONAL",
        "classe_id": "49299"
    },
    {
        "id": "1610204",
        "descricao": "SERRARIAS SEM DESDOBRAMENTO DE MADEIRA EM BRUTO - RESSERRAGEM",
        "classe_id": "16102"
    },
    {
        "id": "1610203",
        "descricao": "SERRARIAS COM DESDOBRAMENTO DE MADEIRA EM BRUTO",
        "classe_id": "16102"
    }
]
```

### Exemplo CSV

#### Seção
```csv
id,descricao
A,"AGRICULTURA, PECUÁRIA, PRODUÇÃO FLORESTAL, PESCA E AQÜICULTURA"
B,INDÚSTRIAS EXTRATIVAS
C,INDÚSTRIAS DE TRANSFORMAÇÃO
D,ELETRICIDADE E GÁS
```

#### Divisão
```csv
id,descricao,secao_id
01,"AGRICULTURA, PECUÁRIA E SERVIÇOS RELACIONADOS",A
02,PRODUÇÃO FLORESTAL,A
03,PESCA E AQÜICULTURA,A
05,EXTRAÇÃO DE CARVÃO MINERAL,B

```

#### Grupo
```csv
id,descricao,divisao_id
011,PRODUÇÃO DE LAVOURAS TEMPORÁRIAS,01
012,HORTICULTURA E FLORICULTURA,01
013,PRODUÇÃO DE LAVOURAS PERMANENTES,01
014,PRODUÇÃO DE SEMENTES E MUDAS CERTIFICADAS,01
```

#### Classe
```csv
id,descricao,grupo_id
01113,CULTIVO DE CEREAIS,011
01121,CULTIVO DE ALGODÃO HERBÁCEO E DE OUTRAS FIBRAS DE LAVOURA TEMPORÁRIA,011
01130,CULTIVO DE CANA-DE-AÇÚCAR,011
01148,CULTIVO DE FUMO,011
```

#### Subclasse
```csv
id,descricao,classe_id
4929902,"TRANSPORTE RODOVIÁRIO COLETIVO DE PASSAGEIROS, SOB REGIME DE FRETAMENTO, INTERMUNICIPAL, INTERESTADUAL E INTERNACIONAL",49299
1610204,SERRARIAS SEM DESDOBRAMENTO DE MADEIRA EM BRUTO - RESSERRAGEM,16102
1610203,SERRARIAS COM DESDOBRAMENTO DE MADEIRA EM BRUTO,16102
4623105,COMÉRCIO ATACADISTA DE CACAU,46231
```

Caso você encontre alguma inconsistencia, por gentileza, abra uma issue ou um pull request.

Licensa: MIT

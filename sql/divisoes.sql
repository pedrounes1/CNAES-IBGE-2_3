CREATE TABLE cnae_divisoes(
id INT NOT NULL,
descricao  VARCHAR(100) NOT NULL,
secao_id CHAR(1) NOT NULL,

PRIMARY KEY (id), 
 FOREIGN KEY (secoes) REFERENCES secao (id));

INSERT INTO cnae_divisoes VALUES
(01, 'AGRICULTURA, PECUÁRIA E SERVIÇOS RELACIONADOS', 'A'),
(02, 'PRODUÇÃO FLORESTAL', 'A'),
(03, 'PESCA E AQÜICULTURA', 'A'),
(05, 'EXTRAÇÃO DE CARVÃO MINERAL', 'B'),
(06, 'EXTRAÇÃO DE PETRÓLEO E GÁS NATURAL', 'B'),
(07, 'EXTRAÇÃO DE MINERAIS METÁLICOS', 'B'),
(08, 'EXTRAÇÃO DE MINERAIS NÃO-METÁLICOS', 'B'),
(09, 'ATIVIDADES DE APOIO À EXTRAÇÃO DE MINERAIS', 'B'),
(10, 'FABRICAÇÃO DE PRODUTOS ALIMENTÍCIOS', 'C'),
(11, 'FABRICAÇÃO DE BEBIDAS', 'C'),
(12, 'FABRICAÇÃO DE PRODUTOS DO FUMO', 'C'),
(13, 'FABRICAÇÃO DE PRODUTOS TÊXTEIS', 'C'),
(14, 'CONFECÇÃO DE ARTIGOS DO VESTUÁRIO E ACESSÓRIOS', 'C'),
(15, 'PREPARAÇÃO DE COUROS E FABRICAÇÃO DE ARTEFATOS DE COURO, ARTIGOS PARA VIAGEM E CALÇADOS', 'C'),
(16, 'FABRICAÇÃO DE PRODUTOS DE MADEIRA', 'C'),
(17, 'FABRICAÇÃO DE CELULOSE, PAPEL E PRODUTOS DE PAPEL', 'C'),
(18, 'IMPRESSÃO E REPRODUÇÃO DE GRAVAÇÕES', 'C'),
(19, 'FABRICAÇÃO DE COQUE, DE PRODUTOS DERIVADOS DO PETRÓLEO E DE BIOCOMBUSTÍVEIS', 'C'),
(29, 'FABRICAÇÃO DE VEÍCULOS AUTOMOTORES, REBOQUES E CARROCERIAS', 'C'),
(20, 'FABRICAÇÃO DE PRODUTOS QUÍMICOS', 'C'),
(21, 'FABRICAÇÃO DE PRODUTOS FARMOQUÍMICOS E FARMACÊUTICOS', 'C'),
(22, 'FABRICAÇÃO DE PRODUTOS DE BORRACHA E DE MATERIAL PLÁSTICO', 'C'),
(23, 'FABRICAÇÃO DE PRODUTOS DE MINERAIS NÃO-METÁLICOS', 'C'),
(24, 'METALURGIA', 'C'),
(25, 'FABRICAÇÃO DE PRODUTOS DE METAL, EXCETO MÁQUINAS  E EQUIPAMENTOS', 'C'),
(26, 'FABRICAÇÃO DE EQUIPAMENTOS DE INFORMÁTICA, PRODUTOS ELETRÔNICOS E ÓPTICOS', 'C'),
(27, 'FABRICAÇÃO DE MÁQUINAS, APARELHOS E MATERIAIS ELÉTRICOS', 'C'),
(28, 'FABRICAÇÃO DE MÁQUINAS E EQUIPAMENTOS', 'C'),
(30, 'FABRICAÇÃO DE OUTROS EQUIPAMENTOS DE TRANSPORTE, EXCETO VEÍCULOS AUTOMOTORES', 'C'),
(31, 'FABRICAÇÃO DE MÓVEIS', 'C'),
(32, 'FABRICAÇÃO DE PRODUTOS DIVERSOS', 'C'),
(33, 'MANUTENÇÃO, REPARAÇÃO E INSTALAÇÃO DE MÁQUINAS E EQUIPAMENTOS', 'C'),
(35, 'ELETRICIDADE, GÁS E OUTRAS UTILIDADES', 'D'),
(36, 'CAPTAÇÃO, TRATAMENTO E DISTRIBUIÇÃO DE ÁGUA', 'E'),
(37, 'ESGOTO E ATIVIDADES RELACIONADAS', 'E'),
(38, 'COLETA, TRATAMENTO E DISPOSIÇÃO DE RESÍDUOS; RECUPERAÇÃO DE MATERIAIS', 'E'),
(39, 'DESCONTAMINAÇÃO E OUTROS SERVIÇOS DE GESTÃO DE RESÍDUOS', 'E'),
(41, 'CONSTRUÇÃO DE EDIFÍCIOS', 'F'),
(42, 'OBRAS DE INFRA-ESTRUTURA', 'F'),
(52, 'ARMAZENAMENTO E ATIVIDADES AUXILIARES DOS TRANSPORTES', 'H'),
(53, 'CORREIO E OUTRAS ATIVIDADES DE ENTREGA', 'H'),
(55, 'ALOJAMENTO', 'I'),
(56, 'ALIMENTAÇÃO', 'I'),
(43, 'SERVIÇOS ESPECIALIZADOS PARA CONSTRUÇÃO', 'F'),
(45, 'COMÉRCIO E REPARAÇÃO DE VEÍCULOS AUTOMOTORES E MOTOCICLETAS', 'G'),
(60, 'ATIVIDADES DE RÁDIO E DE TELEVISÃO', 'J'),
(46, 'COMÉRCIO POR ATACADO, EXCETO VEÍCULOS AUTOMOTORES E MOTOCICLETAS', 'G'),
(47, 'COMÉRCIO VAREJISTA', 'G'),
(49, 'TRANSPORTE TERRESTRE', 'H'),
(50, 'TRANSPORTE AQUAVIÁRIO', 'H'),
(51, 'TRANSPORTE AÉREO', 'H'),
(71, 'SERVIÇOS DE ARQUITETURA E ENGENHARIA; TESTES E ANÁLISES TÉCNICAS', 'M'),
(58, 'EDIÇÃO E EDIÇÃO INTEGRADA À IMPRESSÃO', 'J'),
(59, 'ATIVIDADES CINEMATOGRÁFICAS, PRODUÇÃO DE VÍDEOS E DE PROGRAMAS DE TELEVISÃO; GRAVAÇÃO DE SOM E EDIÇÃO DE MÚSICA', 'J'),
(61, 'TELECOMUNICAÇÕES', 'J'),
(62, 'ATIVIDADES DOS SERVIÇOS DE TECNOLOGIA DA INFORMAÇÃO', 'J'),
(63, 'ATIVIDADES DE PRESTAÇÃO DE SERVIÇOS DE INFORMAÇÃO', 'J'),
(64, 'ATIVIDADES DE SERVIÇOS FINANCEIROS', 'K'),
(65, 'SEGUROS, RESSEGUROS, PREVIDÊNCIA COMPLEMENTAR E PLANOS DE SAÚDE', 'K'),
(66, 'ATIVIDADES AUXILIARES DOS SERVIÇOS FINANCEIROS, SEGUROS, PREVIDÊNCIA COMPLEMENTAR E PLANOS DE SAÚDE', 'K'),
(68, 'ATIVIDADES IMOBILIÁRIAS', 'L'),
(69, 'ATIVIDADES JURÍDICAS, DE CONTABILIDADE E DE AUDITORIA', 'M'),
(70, 'ATIVIDADES DE SEDES DE EMPRESAS E DE CONSULTORIA EM GESTÃO EMPRESARIAL', 'M'),
(72, 'PESQUISA E DESENVOLVIMENTO CIENTÍFICO', 'M'),
(73, 'PUBLICIDADE E PESQUISA DE MERCADO', 'M'),
(74, 'OUTRAS ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS', 'M'),
(75, 'ATIVIDADES VETERINÁRIAS', 'M'),
(91, 'ATIVIDADES LIGADAS AO PATRIMÔNIO CULTURAL E AMBIENTAL', 'R'),
(92, 'ATIVIDADES DE EXPLORAÇÃO DE JOGOS DE AZAR E APOSTAS', 'R'),
(77, 'ALUGUÉIS NÃO-IMOBILIÁRIOS E GESTÃO DE ATIVOS INTANGÍVEIS NÃO-FINANCEIROS', 'N'),
(78, 'SELEÇÃO, AGENCIAMENTO E LOCAÇÃO DE MÃO-DE-OBRA', 'N'),
(79, 'AGÊNCIAS DE VIAGENS, OPERADORES TURÍSTICOS E SERVIÇOS DE RESERVAS', 'N'),
(80, 'ATIVIDADES DE VIGILÂNCIA, SEGURANÇA E INVESTIGAÇÃO', 'N'),
(81, 'SERVIÇOS PARA EDIFÍCIOS E ATIVIDADES PAISAGÍSTICAS', 'N'),
(82, 'SERVIÇOS DE ESCRITÓRIO, DE APOIO ADMINISTRATIVO E OUTROS SERVIÇOS PRESTADOS PRINCIPALMENTE ÀS EMPRESAS', 'N'),
(84, 'ADMINISTRAÇÃO PÚBLICA, DEFESA E SEGURIDADE SOCIAL', 'O'),
(85, 'EDUCAÇÃO', 'P'),
(86, 'ATIVIDADES DE ATENÇÃO À SAÚDE HUMANA', 'Q'),
(87, 'ATIVIDADES DE ATENÇÃO À SAÚDE HUMANA INTEGRADAS COM ASSISTÊNCIA SOCIAL, PRESTADAS EM RESIDÊNCIAS COLETIVAS E PARTICULARES', 'Q'),
(88, 'SERVIÇOS DE ASSISTÊNCIA SOCIAL SEM ALOJAMENTO', 'Q'),
(90, 'ATIVIDADES ARTÍSTICAS, CRIATIVAS E DE ESPETÁCULOS', 'R'),
(93, 'ATIVIDADES ESPORTIVAS E DE RECREAÇÃO E LAZER', 'R'),
(94, 'ATIVIDADES DE ORGANIZAÇÕES ASSOCIATIVAS', 'S'),
(95, 'REPARAÇÃO E MANUTENÇÃO DE EQUIPAMENTOS DE INFORMÁTICA E COMUNICAÇÃO E DE OBJETOS PESSOAIS E DOMÉSTICOS', 'S'),
(96, 'OUTRAS ATIVIDADES DE SERVIÇOS PESSOAIS', 'S'),
(97, 'SERVIÇOS DOMÉSTICOS', 'T'),
(99, 'ORGANISMOS INTERNACIONAIS E OUTRAS INSTITUIÇÕES EXTRATERRITORIAIS', 'U');
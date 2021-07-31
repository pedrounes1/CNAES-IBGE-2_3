CREATE TABLE cnae_secoes(
id INT NOT NULL,
descricao  VARCHAR(100) NOT NULL,


PRIMARY KEY (id));

INSERT INTO cnae_secoes VALUES
('A', 'AGRICULTURA, PECUÁRIA, PRODUÇÃO FLORESTAL, PESCA E AQÜICULTURA'),
('B', 'INDÚSTRIAS EXTRATIVAS'),
('C', 'INDÚSTRIAS DE TRANSFORMAÇÃO'),
('D', 'ELETRICIDADE E GÁS'),
('E', 'ÁGUA, ESGOTO, ATIVIDADES DE GESTÃO DE RESÍDUOS E DESCONTAMINAÇÃO'),
('F', 'CONSTRUÇÃO'),
('G', 'COMÉRCIO; REPARAÇÃO DE VEÍCULOS AUTOMOTORES E MOTOCICLETAS'),
('H', 'TRANSPORTE, ARMAZENAGEM E CORREIO'),
('I', 'ALOJAMENTO E ALIMENTAÇÃO'),
('J', 'INFORMAÇÃO E COMUNICAÇÃO'),
('K', 'ATIVIDADES FINANCEIRAS, DE SEGUROS E SERVIÇOS RELACIONADOS'),
('L', 'ATIVIDADES IMOBILIÁRIAS'),
('M', 'ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS'),
('N', 'ATIVIDADES ADMINISTRATIVAS E SERVIÇOS COMPLEMENTARES'),
('O', 'ADMINISTRAÇÃO PÚBLICA, DEFESA E SEGURIDADE SOCIAL'),
('P', 'EDUCAÇÃO'),
('Q', 'SAÚDE HUMANA E SERVIÇOS SOCIAIS'),
('R', 'ARTES, CULTURA, ESPORTE E RECREAÇÃO'),
('S', 'OUTRAS ATIVIDADES DE SERVIÇOS'),
('T', 'SERVIÇOS DOMÉSTICOS'),
('U', 'ORGANISMOS INTERNACIONAIS E OUTRAS INSTITUIÇÕES EXTRATERRITORIAIS');
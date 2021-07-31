CREATE TABLE cnae_grupos(
id INT NOT NULL,
descricao  VARCHAR(100) NOT NULL,
divisao_id INT NOT NULL,

PRIMARY KEY (id), 
 FOREIGN KEY (divisao_id) REFERENCES cnae_divisoes (id));

INSERT INTO cnae_grupos VALUES
(011, 'PRODUÇÃO DE LAVOURAS TEMPORÁRIAS', 1),
(012, 'HORTICULTURA E FLORICULTURA', 1),
(013, 'PRODUÇÃO DE LAVOURAS PERMANENTES', 1),
(014, 'PRODUÇÃO DE SEMENTES E MUDAS CERTIFICADAS', 1),
(015, 'PECUÁRIA', 1),
(016, 'ATIVIDADES DE APOIO À AGRICULTURA E À PECUÁRIA; ATIVIDADES DE PÓS-COLHEITA', 1),
(017, 'CAÇA E SERVIÇOS RELACIONADOS', 1),
(021, 'PRODUÇÃO FLORESTAL - FLORESTAS PLANTADAS', 2),
(022, 'PRODUÇÃO FLORESTAL - FLORESTAS NATIVAS', 2),
(023, 'ATIVIDADES DE APOIO À PRODUÇÃO FLORESTAL', 2),
(031, 'PESCA', 3),
(032, 'AQÜICULTURA', 3),
(050, 'EXTRAÇÃO DE CARVÃO MINERAL', 5),
(060, 'EXTRAÇÃO DE PETRÓLEO E GÁS NATURAL', 6),
(071, 'EXTRAÇÃO DE MINÉRIO DE FERRO', 7),
(072, 'EXTRAÇÃO DE MINERAIS METÁLICOS NÃO-FERROSOS', 7),
(081, 'EXTRAÇÃO DE PEDRA, AREIA E ARGILA', 8),
(089, 'EXTRAÇÃO DE OUTROS MINERAIS NÃO-METÁLICOS', 8),
(091, 'ATIVIDADES DE APOIO À EXTRAÇÃO DE PETRÓLEO E GÁS NATURAL', 9),
(099, 'ATIVIDADES DE APOIO À EXTRAÇÃO DE MINERAIS, EXCETO PETRÓLEO E GÁS NATURAL', 9),
(101, 'ABATE E FABRICAÇÃO DE PRODUTOS DE CARNE', 10),
(102, 'PRESERVAÇÃO DO PESCADO E FABRICAÇÃO DE PRODUTOS DO PESCADO', 10),
(103, 'FABRICAÇÃO DE CONSERVAS DE FRUTAS, LEGUMES E OUTROS VEGETAIS', 10),
(104, 'FABRICAÇÃO DE ÓLEOS E GORDURAS VEGETAIS E ANIMAIS', 10),
(105, 'LATICÍNIOS', 10),
(106, 'MOAGEM, FABRICAÇÃO DE PRODUTOS AMILÁCEOS E DE ALIMENTOS PARA ANIMAIS', 10),
(107, 'FABRICAÇÃO E REFINO DE AÇÚCAR', 10),
(108, 'TORREFAÇÃO E MOAGEM DE CAFÉ', 10),
(109, 'FABRICAÇÃO DE OUTROS PRODUTOS ALIMENTÍCIOS', 10),
(111, 'FABRICAÇÃO DE BEBIDAS ALCOÓLICAS', 11),
(112, 'FABRICAÇÃO DE BEBIDAS NÃO-ALCOÓLICAS', 11),
(121, 'PROCESSAMENTO INDUSTRIAL DO FUMO', 12),
(122, 'FABRICAÇÃO DE PRODUTOS DO FUMO', 12),
(131, 'PREPARAÇÃO E FIAÇÃO DE FIBRAS TÊXTEIS', 13),
(132, 'TECELAGEM, EXCETO MALHA', 13),
(133, 'FABRICAÇÃO DE TECIDOS DE MALHA', 13),
(134, 'ACABAMENTOS EM FIOS, TECIDOS E ARTEFATOS TÊXTEIS', 13),
(135, 'FABRICAÇÃO DE ARTEFATOS TÊXTEIS, EXCETO VESTUÁRIO', 13),
(141, 'CONFECÇÃO DE ARTIGOS DO VESTUÁRIO E ACESSÓRIOS', 14),
(142, 'FABRICAÇÃO DE ARTIGOS DE MALHARIA E TRICOTAGEM', 14),
(151, 'CURTIMENTO E OUTRAS PREPARAÇÕES DE COURO', 15),
(152, 'FABRICAÇÃO DE ARTIGOS PARA VIAGEM E DE ARTEFATOS DIVERSOS DE COURO', 15),
(153, 'FABRICAÇÃO DE CALÇADOS', 15),
(750, 'ATIVIDADES VETERINÁRIAS', 75),
(154, 'FABRICAÇÃO DE PARTES PARA CALÇADOS, DE QUALQUER MATERIAL', 15),
(161, 'DESDOBRAMENTO DE MADEIRA', 16),
(162, 'FABRICAÇÃO DE PRODUTOS DE MADEIRA, CORTIÇA E MATERIAL TRANÇADO, EXCETO MÓVEIS', 16),
(171, 'FABRICAÇÃO DE CELULOSE E OUTRAS PASTAS PARA A FABRICAÇÃO DE PAPEL', 17),
(172, 'FABRICAÇÃO DE PAPEL, CARTOLINA E PAPEL-CARTÃO', 17),
(173, 'FABRICAÇÃO DE EMBALAGENS DE PAPEL, CARTOLINA, PAPEL-CARTÃO E PAPELÃO ONDULADO', 17),
(174, 'FABRICAÇÃO DE PRODUTOS DIVERSOS DE PAPEL, CARTOLINA, PAPEL-CARTÃO E PAPELÃO ONDULADO', 17),
(181, 'ATIVIDADE DE IMPRESSÃO', 18),
(182, 'SERVIÇOS DE PRÉ-IMPRESSÃO E ACABAMENTOS GRÁFICOS', 18),
(183, 'REPRODUÇÃO DE MATERIAIS GRAVADOS EM QUALQUER SUPORTE', 18),
(191, 'COQUERIAS', 19),
(192, 'FABRICAÇÃO DE PRODUTOS DERIVADOS DO PETRÓLEO', 19),
(193, 'FABRICAÇÃO DE BIOCOMBUSTÍVEIS', 19),
(201, 'FABRICAÇÃO DE PRODUTOS QUÍMICOS INORGÂNICOS', 20),
(202, 'FABRICAÇÃO DE PRODUTOS QUÍMICOS ORGÂNICOS', 20),
(203, 'FABRICAÇÃO DE RESINAS E ELASTÔMEROS', 20),
(204, 'FABRICAÇÃO DE FIBRAS ARTIFICIAIS E SINTÉTICAS', 20),
(205, 'FABRICAÇÃO DE DEFENSIVOS AGRÍCOLAS E DESINFESTANTES DOMISSANITÁRIOS', 20),
(206, 'FABRICAÇÃO DE SABÕES, DETERGENTES, PRODUTOS DE LIMPEZA, COSMÉTICOS, PRODUTOS DE PERFUMARIA E DE HIGIENE PESSOAL', 20),
(207, 'FABRICAÇÃO DE TINTAS, VERNIZES, ESMALTES, LACAS E PRODUTOS AFINS', 20),
(209, 'FABRICAÇÃO DE PRODUTOS E PREPARADOS QUÍMICOS DIVERSOS', 20),
(211, 'FABRICAÇÃO DE PRODUTOS FARMOQUÍMICOS', 21),
(212, 'FABRICAÇÃO DE PRODUTOS FARMACÊUTICOS', 21),
(221, 'FABRICAÇÃO DE PRODUTOS DE BORRACHA', 22),
(222, 'FABRICAÇÃO DE PRODUTOS DE MATERIAL PLÁSTICO', 22),
(231, 'FABRICAÇÃO DE VIDRO E DE PRODUTOS DO VIDRO', 23),
(232, 'FABRICAÇÃO DE CIMENTO', 23),
(233, 'FABRICAÇÃO DE ARTEFATOS DE CONCRETO, CIMENTO, FIBROCIMENTO, GESSO E MATERIAIS SEMELHANTES', 23),
(234, 'FABRICAÇÃO DE PRODUTOS CERÂMICOS', 23),
(239, 'APARELHAMENTO DE PEDRAS E FABRICAÇÃO DE OUTROS PRODUTOS DE MINERAIS NÃO-METÁLICOS', 23),
(241, 'PRODUÇÃO DE FERRO-GUSA E DE FERROLIGAS', 24),
(242, 'SIDERURGIA', 24),
(243, 'PRODUÇÃO DE TUBOS DE AÇO, EXCETO TUBOS SEM COSTURA', 24),
(244, 'METALURGIA DOS METAIS NÃO-FERROSOS', 24),
(245, 'FUNDIÇÃO', 24),
(251, 'FABRICAÇÃO DE ESTRUTURAS METÁLICAS E OBRAS DE CALDEIRARIA PESADA', 25),
(252, 'FABRICAÇÃO DE TANQUES, RESERVATÓRIOS METÁLICOS E CALDEIRAS', 25),
(253, 'FORJARIA, ESTAMPARIA, METALURGIA DO PÓ E SERVIÇOS DE TRATAMENTO DE METAIS', 25),
(254, 'FABRICAÇÃO DE ARTIGOS DE CUTELARIA, DE SERRALHERIA E FERRAMENTAS', 25),
(255, 'FABRICAÇÃO DE EQUIPAMENTO BÉLICO PESADO, ARMAS E MUNIÇÕES', 25),
(259, 'FABRICAÇÃO DE PRODUTOS DE METAL NÃO ESPECIFICADOS ANTERIORMENTE', 25),
(261, 'FABRICAÇÃO DE COMPONENTES ELETRÔNICOS', 26),
(262, 'FABRICAÇÃO DE EQUIPAMENTOS DE INFORMÁTICA E PERIFÉRICOS', 26),
(263, 'FABRICAÇÃO DE EQUIPAMENTOS DE COMUNICAÇÃO', 26),
(264, 'FABRICAÇÃO DE APARELHOS DE RECEPÇÃO, REPRODUÇÃO, GRAVAÇÃO E AMPLIFICAÇÃO DE ÁUDIO E VÍDEO', 26),
(265, 'FABRICAÇÃO DE APARELHOS E INSTRUMENTOS DE MEDIDA, TESTE E CONTROLE; CRONÔMETROS E RELÓGIOS', 26),
(266, 'FABRICAÇÃO DE APARELHOS ELETROMÉDICOS E ELETROTERAPÊUTICOS E EQUIPAMENTOS DE IRRADIAÇÃO', 26),
(267, 'FABRICAÇÃO DE EQUIPAMENTOS E INSTRUMENTOS ÓPTICOS, FOTOGRÁFICOS E CINEMATOGRÁFICOS', 26),
(268, 'FABRICAÇÃO DE MÍDIAS VIRGENS, MAGNÉTICAS E ÓPTICAS', 26),
(271, 'FABRICAÇÃO DE GERADORES, TRANSFORMADORES E MOTORES ELÉTRICOS', 27),
(272, 'FABRICAÇÃO DE PILHAS, BATERIAS E ACUMULADORES ELÉTRICOS', 27),
(273, 'FABRICAÇÃO DE EQUIPAMENTOS PARA DISTRIBUIÇÃO E CONTROLE DE ENERGIA ELÉTRICA', 27),
(274, 'FABRICAÇÃO DE LÂMPADAS E OUTROS EQUIPAMENTOS DE ILUMINAÇÃO', 27),
(275, 'FABRICAÇÃO DE ELETRODOMÉSTICOS', 27),
(279, 'FABRICAÇÃO DE EQUIPAMENTOS E APARELHOS ELÉTRICOS NÃO ESPECIFICADOS ANTERIORMENTE', 27),
(281, 'FABRICAÇÃO DE MOTORES, BOMBAS, COMPRESSORES E EQUIPAMENTOS DE TRANSMISSÃO', 28),
(282, 'FABRICAÇÃO DE MÁQUINAS E EQUIPAMENTOS DE USO GERAL', 28),
(283, 'FABRICAÇÃO DE TRATORES E DE MÁQUINAS E EQUIPAMENTOS PARA A AGRICULTURA E PECUÁRIA', 28),
(284, 'FABRICAÇÃO DE MÁQUINAS-FERRAMENTA', 28),
(285, 'FABRICAÇÃO DE MÁQUINAS E EQUIPAMENTOS DE USO NA EXTRAÇÃO MINERAL E NA CONSTRUÇÃO', 28),
(286, 'FABRICAÇÃO DE MÁQUINAS E EQUIPAMENTOS DE USO INDUSTRIAL ESPECÍFICO', 28),
(291, 'FABRICAÇÃO DE AUTOMÓVEIS, CAMIONETAS E UTILITÁRIOS', 29),
(292, 'FABRICAÇÃO DE CAMINHÕES E ÔNIBUS', 29),
(293, 'FABRICAÇÃO DE CABINES, CARROCERIAS E REBOQUES PARA VEÍCULOS AUTOMOTORES', 29),
(294, 'FABRICAÇÃO DE PEÇAS E ACESSÓRIOS PARA VEÍCULOS AUTOMOTORES', 29),
(295, 'RECONDICIONAMENTO E RECUPERAÇÃO DE MOTORES PARA VEÍCULOS AUTOMOTORES', 29),
(301, 'CONSTRUÇÃO DE EMBARCAÇÕES', 30),
(303, 'FABRICAÇÃO DE VEÍCULOS FERROVIÁRIOS', 30),
(304, 'FABRICAÇÃO DE AERONAVES', 30),
(305, 'FABRICAÇÃO DE VEÍCULOS MILITARES DE COMBATE', 30),
(309, 'FABRICAÇÃO DE EQUIPAMENTOS DE TRANSPORTE NÃO ESPECIFICADOS ANTERIORMENTE', 30),
(310, 'FABRICAÇÃO DE MÓVEIS', 31),
(321, 'FABRICAÇÃO DE ARTIGOS DE JOALHERIA, BIJUTERIA E SEMELHANTES', 32),
(322, 'FABRICAÇÃO DE INSTRUMENTOS MUSICAIS', 32),
(323, 'FABRICAÇÃO DE ARTEFATOS PARA PESCA E ESPORTE', 32),
(324, 'FABRICAÇÃO DE BRINQUEDOS E JOGOS RECREATIVOS', 32),
(325, 'FABRICAÇÃO DE INSTRUMENTOS E MATERIAIS PARA USO MÉDICO E ODONTOLÓGICO E DE ARTIGOS ÓPTICOS', 32),
(329, 'FABRICAÇÃO DE PRODUTOS DIVERSOS', 32),
(331, 'MANUTENÇÃO E REPARAÇÃO DE MÁQUINAS E EQUIPAMENTOS', 33),
(332, 'INSTALAÇÃO DE MÁQUINAS E EQUIPAMENTOS', 33),
(351, 'GERAÇÃO, TRANSMISSÃO E DISTRIBUIÇÃO DE ENERGIA ELÉTRICA', 35),
(352, 'PRODUÇÃO E DISTRIBUIÇÃO DE COMBUSTÍVEIS GASOSOS POR REDES URBANAS', 35),
(353, 'PRODUÇÃO E DISTRIBUIÇÃO DE VAPOR, ÁGUA QUENTE E AR CONDICIONADO', 35),
(360, 'CAPTAÇÃO, TRATAMENTO E DISTRIBUIÇÃO DE ÁGUA', 36),
(370, 'ESGOTO E ATIVIDADES RELACIONADAS', 37),
(381, 'COLETA DE RESÍDUOS', 38),
(382, 'TRATAMENTO E DISPOSIÇÃO DE RESÍDUOS', 38),
(383, 'RECUPERAÇÃO DE MATERIAIS', 38),
(390, 'DESCONTAMINAÇÃO E OUTROS SERVIÇOS DE GESTÃO DE RESÍDUOS', 39),
(411, 'INCORPORAÇÃO DE EMPREENDIMENTOS IMOBILIÁRIOS', 41),
(412, 'CONSTRUÇÃO DE EDIFÍCIOS', 41),
(421, 'CONSTRUÇÃO DE RODOVIAS, FERROVIAS, OBRAS URBANAS E OBRAS-DE-ARTE ESPECIAIS', 42),
(422, 'OBRAS DE INFRA-ESTRUTURA PARA ENERGIA ELÉTRICA, TELECOMUNICAÇÕES, ÁGUA, ESGOTO E TRANSPORTE POR DUTOS', 42),
(429, 'CONSTRUÇÃO DE OUTRAS OBRAS DE INFRA-ESTRUTURA', 42),
(431, 'DEMOLIÇÃO E PREPARAÇÃO DO TERRENO', 43),
(432, 'INSTALAÇÕES ELÉTRICAS, HIDRÁULICAS E OUTRAS INSTALAÇÕES EM CONSTRUÇÕES', 43),
(771, 'LOCAÇÃO DE MEIOS DE TRANSPORTE SEM CONDUTOR', 77),
(433, 'OBRAS DE ACABAMENTO', 43),
(439, 'OUTROS SERVIÇOS ESPECIALIZADOS PARA CONSTRUÇÃO', 43),
(451, 'COMÉRCIO DE VEÍCULOS AUTOMOTORES', 45),
(452, 'MANUTENÇÃO E REPARAÇÃO DE VEÍCULOS AUTOMOTORES', 45),
(453, 'COMÉRCIO DE PEÇAS E ACESSÓRIOS PARA VEÍCULOS AUTOMOTORES', 45),
(454, 'COMÉRCIO, MANUTENÇÃO E REPARAÇÃO DE MOTOCICLETAS, PEÇAS E ACESSÓRIOS', 45),
(461, 'REPRESENTANTES COMERCIAIS E AGENTES DO COMÉRCIO, EXCETO DE VEÍCULOS AUTOMOTORES E MOTOCICLETAS', 46),
(462, 'COMÉRCIO ATACADISTA DE MATÉRIAS-PRIMAS AGRÍCOLAS E ANIMAIS VIVOS', 46),
(463, 'COMÉRCIO ATACADISTA ESPECIALIZADO EM PRODUTOS ALIMENTÍCIOS, BEBIDAS E FUMO', 46),
(464, 'COMÉRCIO ATACADISTA DE PRODUTOS DE CONSUMO NÃO-ALIMENTAR', 46),
(465, 'COMÉRCIO ATACADISTA DE EQUIPAMENTOS E PRODUTOS DE TECNOLOGIAS DE INFORMAÇÃO E COMUNICAÇÃO', 46),
(466, 'COMÉRCIO ATACADISTA DE MÁQUINAS, APARELHOS E EQUIPAMENTOS, EXCETO DE TECNOLOGIAS DE INFORMAÇÃO E COMUNICAÇÃO', 46),
(467, 'COMÉRCIO ATACADISTA DE MADEIRA, FERRAGENS, FERRAMENTAS, MATERIAL ELÉTRICO E MATERIAL DE CONSTRUÇÃO', 46),
(468, 'COMÉRCIO ATACADISTA ESPECIALIZADO EM OUTROS PRODUTOS', 46),
(469, 'COMÉRCIO ATACADISTA NÃO-ESPECIALIZADO', 46),
(471, 'COMÉRCIO VAREJISTA NÃO-ESPECIALIZADO', 47),
(472, 'COMÉRCIO VAREJISTA DE PRODUTOS ALIMENTÍCIOS, BEBIDAS E FUMO', 47),
(473, 'COMÉRCIO VAREJISTA DE COMBUSTÍVEIS PARA VEÍCULOS AUTOMOTORES', 47),
(474, 'COMÉRCIO VAREJISTA DE MATERIAL DE CONSTRUÇÃO', 47),
(475, 'COMÉRCIO VAREJISTA DE EQUIPAMENTOS DE INFORMÁTICA E COMUNICAÇÃO; EQUIPAMENTOS E ARTIGOS DE USO DOMÉSTICO', 47),
(476, 'COMÉRCIO VAREJISTA DE ARTIGOS CULTURAIS, RECREATIVOS E ESPORTIVOS', 47),
(477, 'COMÉRCIO VAREJISTA DE PRODUTOS FARMACÊUTICOS, PERFUMARIA E COSMÉTICOS E ARTIGOS MÉDICOS, ÓPTICOS E ORTOPÉDICOS', 47),
(478, 'COMÉRCIO VAREJISTA DE PRODUTOS NOVOS NÃO ESPECIFICADOS ANTERIORMENTE E DE PRODUTOS USADOS', 47),
(479, 'COMÉRCIO AMBULANTE E OUTROS TIPOS DE COMÉRCIO VAREJISTA', 47),
(491, 'TRANSPORTE FERROVIÁRIO E METROFERROVIÁRIO', 49),
(492, 'TRANSPORTE RODOVIÁRIO DE PASSAGEIROS', 49),
(493, 'TRANSPORTE RODOVIÁRIO DE CARGA', 49),
(494, 'TRANSPORTE DUTOVIÁRIO', 49),
(495, 'TRENS TURÍSTICOS, TELEFÉRICOS E SIMILARES', 49),
(501, 'TRANSPORTE MARÍTIMO DE CABOTAGEM E LONGO CURSO', 50),
(502, 'TRANSPORTE POR NAVEGAÇÃO INTERIOR', 50),
(503, 'NAVEGAÇÃO DE APOIO', 50),
(509, 'OUTROS TRANSPORTES AQUAVIÁRIOS', 50),
(511, 'TRANSPORTE AÉREO DE PASSAGEIROS', 51),
(512, 'TRANSPORTE AÉREO DE CARGA', 51),
(513, 'TRANSPORTE ESPACIAL', 51),
(521, 'ARMAZENAMENTO, CARGA E DESCARGA', 52),
(522, 'ATIVIDADES AUXILIARES DOS TRANSPORTES TERRESTRES', 52),
(523, 'ATIVIDADES AUXILIARES DOS TRANSPORTES AQUAVIÁRIOS', 52),
(524, 'ATIVIDADES AUXILIARES DOS TRANSPORTES AÉREOS', 52),
(525, 'ATIVIDADES RELACIONADAS À ORGANIZAÇÃO DO TRANSPORTE DE CARGA', 52),
(531, 'ATIVIDADES DE CORREIO', 53),
(532, 'ATIVIDADES DE MALOTE E DE ENTREGA', 53),
(551, 'HOTÉIS E SIMILARES', 55),
(559, 'OUTROS TIPOS DE ALOJAMENTO NÃO ESPECIFICADOS ANTERIORMENTE', 55),
(561, 'RESTAURANTES E OUTROS SERVIÇOS DE ALIMENTAÇÃO E BEBIDAS', 56),
(562, 'SERVIÇOS DE CATERING, BUFÊ E OUTROS SERVIÇOS DE COMIDA PREPARADA', 56),
(772, 'ALUGUEL DE OBJETOS PESSOAIS E DOMÉSTICOS', 77),
(581, 'EDIÇÃO DE LIVROS, JORNAIS, REVISTAS E OUTRAS ATIVIDADES DE EDIÇÃO', 58),
(582, 'EDIÇÃO INTEGRADA À IMPRESSÃO DE LIVROS, JORNAIS, REVISTAS E OUTRAS PUBLICAÇÕES', 58),
(591, 'ATIVIDADES CINEMATOGRÁFICAS, PRODUÇÃO DE VÍDEOS E DE PROGRAMAS DE TELEVISÃO', 59),
(592, 'ATIVIDADES DE GRAVAÇÃO DE SOM E DE EDIÇÃO DE MÚSICA', 59),
(601, 'ATIVIDADES DE RÁDIO', 60),
(602, 'ATIVIDADES DE TELEVISÃO', 60),
(611, 'TELECOMUNICAÇÕES POR FIO', 61),
(612, 'TELECOMUNICAÇÕES SEM FIO', 61),
(613, 'TELECOMUNICAÇÕES POR SATÉLITE', 61),
(614, 'OPERADORAS DE TELEVISÃO POR ASSINATURA', 61),
(619, 'OUTRAS ATIVIDADES DE TELECOMUNICAÇÕES', 61),
(620, 'ATIVIDADES DOS SERVIÇOS DE TECNOLOGIA DA INFORMAÇÃO', 62),
(631, 'TRATAMENTO DE DADOS, HOSPEDAGEM NA INTERNET E OUTRAS ATIVIDADES RELACIONADAS', 63),
(639, 'OUTRAS ATIVIDADES DE PRESTAÇÃO DE SERVIÇOS DE INFORMAÇÃO', 63),
(641, 'BANCO CENTRAL', 64),
(642, 'INTERMEDIAÇÃO MONETÁRIA - DEPÓSITOS À VISTA', 64),
(643, 'INTERMEDIAÇÃO NÃO-MONETÁRIA - OUTROS INSTRUMENTOS DE CAPTAÇÃO', 64),
(644, 'ARRENDAMENTO MERCANTIL', 64),
(645, 'SOCIEDADES DE CAPITALIZAÇÃO', 64),
(646, 'ATIVIDADES DE SOCIEDADES DE PARTICIPAÇÃO', 64),
(647, 'FUNDOS DE INVESTIMENTO', 64),
(649, 'ATIVIDADES DE SERVIÇOS FINANCEIROS NÃO ESPECIFICADAS ANTERIORMENTE', 64),
(651, 'SEGUROS DE VIDA E NÃO-VIDA', 65),
(652, 'SEGUROS-SAÚDE', 65),
(653, 'RESSEGUROS', 65),
(654, 'PREVIDÊNCIA COMPLEMENTAR', 65),
(655, 'PLANOS DE SAÚDE', 65),
(661, 'ATIVIDADES AUXILIARES DOS SERVIÇOS FINANCEIROS', 66),
(662, 'ATIVIDADES AUXILIARES DOS SEGUROS, DA PREVIDÊNCIA COMPLEMENTAR E DOS PLANOS DE SAÚDE', 66),
(663, 'ATIVIDADES DE ADMINISTRAÇÃO DE FUNDOS POR CONTRATO OU COMISSÃO', 66),
(681, 'ATIVIDADES IMOBILIÁRIAS DE IMÓVEIS PRÓPRIOS', 68),
(682, 'ATIVIDADES IMOBILIÁRIAS POR CONTRATO OU COMISSÃO', 68),
(691, 'ATIVIDADES JURÍDICAS', 69),
(692, 'ATIVIDADES DE CONTABILIDADE, CONSULTORIA E AUDITORIA CONTÁBIL E TRIBUTÁRIA', 69),
(701, 'SEDES DE EMPRESAS E UNIDADES ADMINISTRATIVAS LOCAIS', 70),
(702, 'ATIVIDADES DE CONSULTORIA EM GESTÃO EMPRESARIAL', 70),
(711, 'SERVIÇOS DE ARQUITETURA E ENGENHARIA E ATIVIDADES TÉCNICAS RELACIONADAS', 71),
(712, 'TESTES E ANÁLISES TÉCNICAS', 71),
(721, 'PESQUISA E DESENVOLVIMENTO EXPERIMENTAL EM CIÊNCIAS FÍSICAS E NATURAIS', 72),
(722, 'PESQUISA E DESENVOLVIMENTO EXPERIMENTAL EM CIÊNCIAS SOCIAIS E HUMANAS', 72),
(731, 'PUBLICIDADE', 73),
(732, 'PESQUISAS DE MERCADO E DE OPINIÃO PÚBLICA', 73),
(741, 'DESIGN E DECORAÇÃO DE INTERIORES', 74),
(742, 'ATIVIDADES FOTOGRÁFICAS E SIMILARES', 74),
(749, 'ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS NÃO ESPECIFICADAS ANTERIORMENTE', 74),
(773, 'ALUGUEL DE MÁQUINAS E EQUIPAMENTOS SEM OPERADOR', 77),
(774, 'GESTÃO DE ATIVOS INTANGÍVEIS NÃO-FINANCEIROS', 77),
(781, 'SELEÇÃO E AGENCIAMENTO DE MÃO-DE-OBRA', 78),
(782, 'LOCAÇÃO DE MÃO-DE-OBRA TEMPORÁRIA', 78),
(783, 'FORNECIMENTO E GESTÃO DE RECURSOS HUMANOS PARA TERCEIROS', 78),
(791, 'AGÊNCIAS DE VIAGENS E OPERADORES TURÍSTICOS', 79),
(799, 'SERVIÇOS DE RESERVAS E OUTROS SERVIÇOS DE TURISMO NÃO ESPECIFICADOS ANTERIORMENTE', 79),
(801, 'ATIVIDADES DE VIGILÂNCIA, SEGURANÇA PRIVADA E TRANSPORTE DE VALORES', 80),
(802, 'ATIVIDADES DE MONITORAMENTO DE SISTEMAS DE SEGURANÇA', 80),
(803, 'ATIVIDADES DE INVESTIGAÇÃO PARTICULAR', 80),
(811, 'SERVIÇOS COMBINADOS PARA APOIO A EDIFÍCIOS', 81),
(812, 'ATIVIDADES DE LIMPEZA', 81),
(813, 'ATIVIDADES PAISAGÍSTICAS', 81),
(821, 'SERVIÇOS DE ESCRITÓRIO E APOIO ADMINISTRATIVO', 82),
(822, 'ATIVIDADES DE TELEATENDIMENTO', 82),
(823, 'ATIVIDADES DE ORGANIZAÇÃO DE EVENTOS, EXCETO CULTURAIS E ESPORTIVOS', 82),
(829, 'OUTRAS ATIVIDADES DE SERVIÇOS PRESTADOS PRINCIPALMENTE ÀS EMPRESAS', 82),
(841, 'ADMINISTRAÇÃO DO ESTADO E DA POLÍTICA ECONÔMICA E SOCIAL', 84),
(842, 'SERVIÇOS COLETIVOS PRESTADOS PELA ADMINISTRAÇÃO PÚBLICA', 84),
(843, 'SEGURIDADE SOCIAL OBRIGATÓRIA', 84),
(851, 'EDUCAÇÃO INFANTIL E ENSINO FUNDAMENTAL', 85),
(852, 'ENSINO MÉDIO', 85),
(853, 'EDUCAÇÃO SUPERIOR', 85),
(854, 'EDUCAÇÃO PROFISSIONAL DE NÍVEL TÉCNICO E TECNOLÓGICO', 85),
(855, 'ATIVIDADES DE APOIO À EDUCAÇÃO', 85),
(859, 'OUTRAS ATIVIDADES DE ENSINO', 85),
(861, 'ATIVIDADES DE ATENDIMENTO HOSPITALAR', 86),
(862, 'SERVIÇOS MÓVEIS DE ATENDIMENTO A URGÊNCIAS E DE REMOÇÃO DE PACIENTES', 86),
(863, 'ATIVIDADES DE ATENÇÃO AMBULATORIAL EXECUTADAS POR MÉDICOS E ODONTÓLOGOS', 86),
(864, 'ATIVIDADES DE SERVIÇOS DE COMPLEMENTAÇÃO DIAGNÓSTICA E TERAPÊUTICA', 86),
(865, 'ATIVIDADES DE PROFISSIONAIS DA ÁREA DE SAÚDE, EXCETO MÉDICOS E ODONTÓLOGOS', 86),
(866, 'ATIVIDADES DE APOIO À GESTÃO DE SAÚDE', 86),
(869, 'ATIVIDADES DE ATENÇÃO À SAÚDE HUMANA NÃO ESPECIFICADAS ANTERIORMENTE', 86),
(871, 'ATIVIDADES DE ASSISTÊNCIA A IDOSOS, DEFICIENTES FÍSICOS, IMUNODEPRIMIDOS E CONVALESCENTES, E DE INFRA-ESTRUTURA E APOIO A PACIENTES PRESTADAS EM RESIDÊNCIAS COLETIVAS E PARTICULARES', 87),
(872, 'ATIVIDADES DE ASSISTÊNCIA PSICOSSOCIAL E À SAÚDE A PORTADORES DE DISTÚRBIOS PSÍQUICOS, DEFICIÊNCIA MENTAL E DEPENDÊNCIA QUÍMICA', 87),
(873, 'ATIVIDADES DE ASSISTÊNCIA SOCIAL PRESTADAS EM RESIDÊNCIAS COLETIVAS E PARTICULARES', 87),
(880, 'SERVIÇOS DE ASSISTÊNCIA SOCIAL SEM ALOJAMENTO', 88),
(900, 'ATIVIDADES ARTÍSTICAS, CRIATIVAS E DE ESPETÁCULOS', 90),
(910, 'ATIVIDADES LIGADAS AO PATRIMÔNIO CULTURAL E AMBIENTAL', 91),
(920, 'ATIVIDADES DE EXPLORAÇÃO DE JOGOS DE AZAR E APOSTAS', 92),
(931, 'ATIVIDADES ESPORTIVAS', 93),
(932, 'ATIVIDADES DE RECREAÇÃO E LAZER', 93),
(941, 'ATIVIDADES DE ORGANIZAÇÕES ASSOCIATIVAS PATRONAIS, EMPRESARIAIS E PROFISSIONAIS', 94),
(942, 'ATIVIDADES DE ORGANIZAÇÕES SINDICAIS', 94),
(943, 'ATIVIDADES DE ASSOCIAÇÕES DE DEFESA DE DIREITOS SOCIAIS', 94),
(949, 'ATIVIDADES DE ORGANIZAÇÕES ASSOCIATIVAS NÃO ESPECIFICADAS ANTERIORMENTE', 94),
(951, 'REPARAÇÃO E MANUTENÇÃO DE EQUIPAMENTOS DE INFORMÁTICA E COMUNICAÇÃO', 95),
(952, 'REPARAÇÃO E MANUTENÇÃO DE OBJETOS E EQUIPAMENTOS PESSOAIS E DOMÉSTICOS', 95),
(960, 'OUTRAS ATIVIDADES DE SERVIÇOS PESSOAIS', 96),
(970, 'SERVIÇOS DOMÉSTICOS', 97),
(990, 'ORGANISMOS INTERNACIONAIS E OUTRAS INSTITUIÇÕES EXTRATERRITORIAIS', 99);
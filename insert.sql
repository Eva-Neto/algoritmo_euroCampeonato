-- Insert into paises (European countries)
INSERT INTO paises (nome) VALUES
('Germany'), ('France'), ('Spain'), ('Italy'), ('Portugal'),
('Netherlands'), ('England'), ('Belgium'), ('Switzerland'), ('Croatia'),
('Denmark'), ('Sweden'), ('Poland'), ('Austria'), ('Ukraine'),
('Serbia'), ('Romania'), ('Hungary'), ('Slovakia'), ('Czech Republic');

-- Insert into cidades
INSERT INTO cidades (nome, pais_id) VALUES
('Berlin', 1), ('Munich', 1), ('Paris', 2), ('Marseille', 2), ('Madrid', 3),
('Barcelona', 3), ('Rome', 4), ('Milan', 4), ('Lisbon', 5), ('Porto', 5),
('Amsterdam', 6), ('Rotterdam', 6), ('London', 7), ('Manchester', 7),
('Brussels', 8), ('Antwerp', 8), ('Zurich', 9), ('Geneva', 9),
('Zagreb', 10), ('Split', 10);

-- Insert into estadios
INSERT INTO estadios (nome, cidade_id, capacidade) VALUES
('Olympiastadion', 1, 74649), ('Allianz Arena', 2, 75000), ('Stade de France', 3, 81338),
('Orange Vélodrome', 4, 67394), ('Santiago Bernabéu', 5, 81044), ('Camp Nou', 6, 99354),
('Stadio Olimpico', 7, 72698), ('San Siro', 8, 80018), ('Estádio da Luz', 9, 64542),
('Estádio do Dragão', 10, 50033), ('Johan Cruyff Arena', 11, 55000), ('De Kuip', 12, 51117),
('Wembley Stadium', 13, 90000), ('Old Trafford', 14, 74994), ('King Baudouin Stadium', 15, 50093),
('Bosuilstadion', 16, 16649), ('St. Jakob-Park', 17, 37994), ('Stade de Genève', 18, 30084),
('Maksimir Stadium', 19, 35423), ('Poljud Stadium', 20, 35000);

-- Insert into selecoes
INSERT INTO selecoes (nome, pais_id) VALUES
('Germany', 1), ('France', 2), ('Spain', 3), ('Italy', 4), ('Portugal', 5),
('Netherlands', 6), ('England', 7), ('Belgium', 8), ('Switzerland', 9), ('Croatia', 10),
('Denmark', 11), ('Sweden', 12), ('Poland', 13), ('Austria', 14), ('Ukraine', 15),
('Serbia', 16), ('Romania', 17), ('Hungary', 18), ('Slovakia', 19), ('Czech Republic', 20);

-- Insert into jogadores
INSERT INTO jogadores (nome, idade, posicao, selecao_id) VALUES
('Manuel Neuer', 37, 'Goalkeeper', 1), ('Toni Kroos', 34, 'Midfielder', 1),
('Kylian Mbappé', 25, 'Forward', 2), ('NGolo Kanté', 33, 'Midfielder', 2),
('Sergio Ramos', 38, 'Defender', 3), ('Sergio Busquets', 36, 'Midfielder', 3),
('Gianluigi Donnarumma', 25, 'Goalkeeper', 4), ('Leonardo Bonucci', 37, 'Defender', 4),
('Cristiano Ronaldo', 39, 'Forward', 5), ('Bruno Fernandes', 29, 'Midfielder', 5),
('Virgil van Dijk', 32, 'Defender', 6), ('Memphis Depay', 30, 'Forward', 6),
('Harry Kane', 30, 'Forward', 7), ('Raheem Sterling', 29, 'Forward', 7),
('Kevin De Bruyne', 32, 'Midfielder', 8), ('Romelu Lukaku', 31, 'Forward', 8),
('Granit Xhaka', 31, 'Midfielder', 9), ('Xherdan Shaqiri', 32, 'Forward', 9),
('Luka Modric', 38, 'Midfielder', 10), ('Ivan Perišić', 35, 'Forward', 10);

-- Insert into grupos
INSERT INTO grupos (nome) VALUES
('A'), ('B'), ('C'), ('D'), ('E'), ('F'), ('G'), ('H'), ('I'), ('J'),
('K'), ('L'), ('M'), ('N'), ('O'), ('P'), ('Q'), ('R'), ('S'), ('T');

-- Insert into partidas (example data)
INSERT INTO partidas (gols_selecao1, gols_selecao2, estatisticas_equipe1_id, estatisticas_equipe2_id, selecao_casa_id, selecao_fora_id, estadio_id, grupo_id, data_hora) VALUES
(2, 1, 1, 2, 1, 2, 1, 1, '2024-06-12 20:00:00'),
(1, 1, 3, 4, 3, 4, 2, 2, '2024-06-13 18:00:00'),
(3, 2, 5, 6, 5, 6, 3, 3, '2024-06-14 21:00:00'),
(0, 0, 7, 8, 7, 8, 4, 4, '2024-06-15 19:00:00');

-- Insert into eventos (example data)
INSERT INTO eventos (tipo, jogador_id, minuto, partida_id) VALUES
('Goal', 3, 23, 1), ('Yellow Card', 1, 45, 1), ('Goal', 10, 58, 2),
('Red Card', 4, 75, 2), ('Goal', 5, 19, 3), ('Goal', 6, 47, 3),
('Goal', 14, 33, 4), ('Yellow Card', 13, 65, 4);

-- Insert into selecao_grupo
INSERT INTO selecao_grupo (grupo_id, selecao_id, pontos, jogos, vitorias, empates, derrotas, gols_pro, gols_contra) VALUES
(1, 1, 3, 1, 1, 0, 0, 2, 1), (1, 2, 0, 1, 0, 0, 1, 1, 2),
(2, 3, 1, 1, 0, 1, 0, 1, 1), (2, 4, 1, 1, 0, 1, 0, 1, 1);

-- Insert into estatisticas_individuais (example data)
INSERT INTO estatisticas_individuais (partida_id, jogador_id, passes, assistencias, remates, minutos_jogados, golos) VALUES
(1, 1, 50, 1, 2, 90, 0), (1, 2, 60, 0, 1, 90, 0), (1, 3, 30, 0, 3, 90, 1),
(2, 4, 55, 0, 0, 45, 0), (2, 5, 40, 0, 2, 90, 0), (2, 6, 65, 1, 4, 90, 1),
(3, 7, 70, 0, 1, 90, 0), (3, 8, 45, 0, 3, 90, 0);


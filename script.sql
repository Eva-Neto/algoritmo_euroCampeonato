create table paises
(
    id   serial
        primary key,
    nome varchar(255) not null
);

alter table paises
    owner to postgres;

create table cidades
(
    id      serial
        primary key,
    nome    varchar(255) not null,
    pais_id integer
        references paises
);

alter table cidades
    owner to postgres;

create table estadios
(
    id         serial
        primary key,
    nome       varchar(255) not null,
    cidade_id  integer
        references cidades,
    capacidade integer
);

alter table estadios
    owner to postgres;

create table selecoes
(
    id      serial
        primary key,
    nome    varchar(255) not null,
    pais_id integer
        references paises
);

alter table selecoes
    owner to postgres;

create table jogadores
(
    id         serial
        primary key,
    nome       varchar(255) not null,
    idade      integer,
    posicao    varchar(255),
    selecao_id integer
        references selecoes
);

alter table jogadores
    owner to postgres;

create table grupos
(
    id   serial
        primary key,
    nome varchar(1) not null
);

alter table grupos
    owner to postgres;

create table partidas
(
    id                      serial
        primary key,
    gols_selecao1           integer,
    gols_selecao2           integer,
    estatisticas_equipe1_id integer,
    estatisticas_equipe2_id integer,
    selecao_casa_id         integer
        references selecoes,
    selecao_fora_id         integer
        references selecoes,
    estadio_id              integer
        references estadios,
    grupo_id                integer
        references grupos,
    data_hora               timestamp
);

alter table partidas
    owner to postgres;

create table eventos
(
    id         serial
        primary key,
    tipo       varchar(255),
    jogador_id integer
        references jogadores,
    minuto     integer,
    partida_id integer
        references partidas
);

alter table eventos
    owner to postgres;

create table selecao_grupo
(
    id          serial
        primary key,
    grupo_id    integer not null
        references grupos,
    selecao_id  integer not null
        references selecoes,
    pontos      integer default 0,
    jogos       integer default 0,
    vitorias    integer default 0,
    empates     integer default 0,
    derrotas    integer default 0,
    gols_pro    integer default 0,
    gols_contra integer default 0
);

alter table selecao_grupo
    owner to postgres;

create table estatisticas_individuais
(
    id              serial
        primary key,
    partida_id      integer not null
        references partidas,
    jogador_id      integer not null
        references jogadores,
    passes          integer,
    assistencias    integer,
    remates         integer,
    minutos_jogados integer,
    golos           integer
);

alter table estatisticas_individuais
    owner to postgres;



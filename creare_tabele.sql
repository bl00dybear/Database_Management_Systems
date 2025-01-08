create table firma_de_transport
(
    id_firma        number(10)   not null
        constraint pk_firma_id
            primary key,
    nume            varchar2(40) not null
        check (regexp_like(nume, '^[A-Z]')),
    nr_soferi       number(10)   not null,
    nr_dispo        number(10)   not null,
    nr_transporturi number(10)   not null,
    cifra_afaceri   number(20)   not null
);

create table producator_camioane
(
    id_prod_camion number(10)   not null
        constraint pk_prod_t
            primary key,
    nume           varchar2(40) not null
        check (regexp_like(nume, '^[A-Z]')),
    numar_modele   number(5)    not null
);

create table producator_trailere
(
    id_prod_trailer number(10)   not null
        constraint pk_prod_trail
            primary key,
    nume            varchar2(40) not null
        check (regexp_like(nume, '^[A-Z]')),
    numar_modele    number(5)    not null
);

create table producator_trailere
(
    id_prod_trailer number(10)   not null
        constraint pk_prod_trail
            primary key,
    nume            varchar2(40) not null
        check (regexp_like(nume, '^[A-Z]')),
    numar_modele    number(5)    not null
);

create table soferi
(
    id_sofer        number(10)   not null
        constraint pk_sofer_id
            primary key,
    id_firma        number(10)   not null
        constraint fk_firma_sofer
            references firma_de_transport,
    nume            varchar2(40) not null
        check (regexp_like(nume, '^[A-Z]')),
    data_angajare   date         not null,
    nr_transporturi number(5)    not null
);

create table trailere
(
    id_trailer     number(10)   not null
        constraint pk_trailer
            primary key,
    id_producator  number(10)   not null
        constraint fk_trailer_prod
            references producator_trailere,
    numar_axe      number(5)    not null,
    tonaj_maxim    number(5, 1) not null,
    tip_directie   varchar2(40) not null
        check (regexp_like(tip_directie, '^[A-Z]')),
    ultima_revizie date         not null
);

create table camioane
(
    id_camion        number(10)   not null
        constraint pk_camion
            primary key,
    id_firma         number(10)   not null
        constraint fk_camion_firma
            references firma_de_transport,
    id_trailer       number(10)   not null
        constraint fk_camion_trailer
            references trailere,
    id_prod_camion   number(10)   not null
        constraint fk_camion_prod
            references producator_camioane,
    nr_inmatriculare varchar2(10) not null,
    nr_kilometri     number(5)    not null,
    nr_transporturi  number(5)    not null,
    ultima_revizie   date         not null
);

create table marfa
(
    id_marfa      number(10)   not null
        constraint pk_marfa
            primary key,
    id_producator number(10)   not null
        constraint fk_marfa_prod
            references producator_marfa,
    tonaj         number(5, 1) not null,
    lungime       number(5, 2) not null,
    latime        number(5, 2) not null,
    inaltime      number(5, 2) not null
);

create table clienti
(
    id_client  number(10)   not null
        constraint pk_client
            primary key,
    nume       varchar2(40) not null
        check (regexp_like(nume, '^[A-Z]')),
    tara       varchar2(40) not null
        check (regexp_like(tara, '^[A-Z]')),
    localitate varchar2(40) not null
        check (regexp_like(localitate, '^[A-Z]'))
);

create table masini_de_insotire
(
    id_insotire      number(10)   not null
        constraint pk_ins_id
            primary key,
    id_firma         number(10)   not null
        constraint fk_ins_firma
            references firma_de_transport,
    nr_inmatriculare varchar2(10) not null,
    nr_kilometri     number(10)   not null,
    nr_transpor      number(5)    not null,
    ultima_revizie   date         not null
);

create table disponenti
(
    id_dispo number(10)   not null
        constraint pk_dispo_id
            primary key,
    id_firma number(10)   not null
        constraint fk_firma
            references firma_de_transport,
    nume     varchar2(40) not null
        check (regexp_like(nume, '^[A-Z]'))
);

create table transporturi
(
    id_transport    number(10)   not null
        constraint pk_trans
            primary key,
    id_camion       number(10)   not null
        constraint fk_trans_camion
            references camioane,
    id_sofer        number(10)   not null
        constraint fk_trans_sofer
            references soferi,
    id_marfa        number(10)   not null
        constraint fk_trans_marfa
            references marfa,
    id_client       number(10)   not null
        constraint fk_trans_client
            references clienti,
    nr_kilometri    number(10)   not null,
    tara_incarcare  varchar2(40) not null
        check (regexp_like(tara_incarcare, '^[A-Z]')),
    loc_incarcare   varchar2(40) not null
        check (regexp_like(loc_incarcare, '^[A-Z]')),
    tara_descarcare varchar2(40) not null
        check (regexp_like(tara_descarcare, '^[A-Z]')),
    loc_descarcare  varchar2(40) not null
        check (regexp_like(loc_descarcare, '^[A-Z]'))
);

create table transport_insotire
(
    id_transport_insotire number(10) not null
        constraint ck_ti
            primary key,
    id_transport          number(10) not null
        constraint fk_ti_trans
            references transporturi,
    id_insotire           number(10) not null
        constraint fk_ti_ins
            references masini_de_insotire
);
CREATE TABLE public."usuarios"
(
    idusuario character varying(40) NOT NULL,
    nome character varying(50) NOT NULL,
    senha character varying(20) NOT NULL,
    email character varying(20),
    PRIMARY KEY (idusuario)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Usuarios"
    OWNER to postgres;
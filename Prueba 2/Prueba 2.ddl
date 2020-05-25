-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-05-24 23:12:42 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alternativas (
    id            INTEGER NOT NULL,
    descripcion   VARCHAR2(50),
    porcentaje    INTEGER,
    correcta      CHAR(1),
    preguntas_id  INTEGER
);

ALTER TABLE alternativas ADD CONSTRAINT alternativas_pk PRIMARY KEY ( id );

ALTER TABLE alternativas ADD CONSTRAINT alternativas_id_un UNIQUE ( id );

CREATE TABLE alumnos (
    id             INTEGER NOT NULL,
    nombre         VARCHAR2(50),
    curso_id       INTEGER,
    respuestas_id  INTEGER NOT NULL
);

ALTER TABLE alumnos ADD CONSTRAINT alumnos_pk PRIMARY KEY ( id );

ALTER TABLE alumnos ADD CONSTRAINT alumnos_id_un UNIQUE ( id );

CREATE TABLE curso (
    id      INTEGER NOT NULL,
    nombre  VARCHAR2(50)
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id );

ALTER TABLE curso ADD CONSTRAINT curso_id_un UNIQUE ( id );

CREATE TABLE preguntas (
    id         INTEGER NOT NULL,
    enunciado  VARCHAR2(50),
    puntaje    INTEGER,
    test_id    INTEGER
);

ALTER TABLE preguntas ADD CONSTRAINT preguntas_pk PRIMARY KEY ( id );

ALTER TABLE preguntas ADD CONSTRAINT preguntas_id_un UNIQUE ( id );

CREATE TABLE respuestas (
    id         INTEGER NOT NULL,
    respuesta  VARCHAR2(50),
    puntaje    INTEGER
);

ALTER TABLE respuestas ADD CONSTRAINT respuestas_pk PRIMARY KEY ( id );

CREATE TABLE test (
    id             INTEGER NOT NULL,
    nombre         VARCHAR2(50),
    descripcion    VARCHAR2(50),
    autor          VARCHAR2(50),
    fecha          DATE,
    curso_id       INTEGER NOT NULL,
    unidad_id      INTEGER NOT NULL,
    respuestas_id  INTEGER NOT NULL
);

ALTER TABLE test ADD CONSTRAINT test_pk PRIMARY KEY ( id );

ALTER TABLE test ADD CONSTRAINT test_id_un UNIQUE ( id );

CREATE TABLE unidad (
    id      INTEGER NOT NULL,
    nombre  VARCHAR2(50)
);

ALTER TABLE unidad ADD CONSTRAINT unidad_pk PRIMARY KEY ( id );

ALTER TABLE unidad ADD CONSTRAINT unidad_id_un UNIQUE ( id );

ALTER TABLE alternativas
    ADD CONSTRAINT alternativas_preguntas_fk FOREIGN KEY ( preguntas_id )
        REFERENCES preguntas ( id );

ALTER TABLE alumnos
    ADD CONSTRAINT alumnos_curso_fk FOREIGN KEY ( curso_id )
        REFERENCES curso ( id );

ALTER TABLE alumnos
    ADD CONSTRAINT alumnos_respuestas_fk FOREIGN KEY ( respuestas_id )
        REFERENCES respuestas ( id );

ALTER TABLE preguntas
    ADD CONSTRAINT preguntas_test_fk FOREIGN KEY ( test_id )
        REFERENCES test ( id );

ALTER TABLE test
    ADD CONSTRAINT test_curso_fk FOREIGN KEY ( curso_id )
        REFERENCES curso ( id );

ALTER TABLE test
    ADD CONSTRAINT test_respuestas_fk FOREIGN KEY ( respuestas_id )
        REFERENCES respuestas ( id );

ALTER TABLE test
    ADD CONSTRAINT test_unidad_fk FOREIGN KEY ( unidad_id )
        REFERENCES unidad ( id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             20
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0

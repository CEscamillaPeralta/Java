-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-03-13 20:56:06 CLST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alternativa (
    id_alternativa          INTEGER NOT NULL,
    descripcion             VARCHAR2(50),
    valor_logico            CHAR(1),
    preguntas_id_preguntas  INTEGER NOT NULL,
    porcentaje              INTEGER
);

ALTER TABLE alternativa ADD CONSTRAINT alternativa_pk PRIMARY KEY ( id_alternativa );

CREATE TABLE alumno (
    id_alumno       INTEGER NOT NULL,
    nombre_alumno   VARCHAR2(50),
    curso_id_curso  INTEGER NOT NULL
);

ALTER TABLE alumno ADD CONSTRAINT alumno_pk PRIMARY KEY ( id_alumno );

CREATE TABLE curso (
    id_curso      INTEGER NOT NULL,
    nombre_curso  VARCHAR2(50)
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id_curso );

CREATE TABLE preguntas (
    id_preguntas  INTEGER NOT NULL,
    enunciado     VARCHAR2(150),
    puntaje       INTEGER,
    test_id_test  INTEGER NOT NULL
);

ALTER TABLE preguntas ADD CONSTRAINT preguntas_pk PRIMARY KEY ( id_preguntas );

CREATE TABLE relacion_alumno_test (
    alumno_id_alumno  INTEGER NOT NULL,
    test_id_test      INTEGER NOT NULL
);

ALTER TABLE relacion_alumno_test ADD CONSTRAINT relacion_alumno_test_pk PRIMARY KEY ( alumno_id_alumno,
                                                                                      test_id_test );

CREATE TABLE test (
    id_test           INTEGER NOT NULL,
    autor             VARCHAR2(50),
    descripcion       VARCHAR2(100),
    fecha             VARCHAR2(10),
    unidad_id_unidad  INTEGER NOT NULL
);

ALTER TABLE test ADD CONSTRAINT test_pk PRIMARY KEY ( id_test );

CREATE TABLE unidad (
    id_unidad       INTEGER NOT NULL,
    nombre_unidad   VARCHAR2(50),
    curso_id_curso  INTEGER NOT NULL
);

ALTER TABLE unidad ADD CONSTRAINT unidad_pk PRIMARY KEY ( id_unidad );

ALTER TABLE alternativa
    ADD CONSTRAINT alternativa_preguntas_fk FOREIGN KEY ( preguntas_id_preguntas )
        REFERENCES preguntas ( id_preguntas );

ALTER TABLE alumno
    ADD CONSTRAINT alumno_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE preguntas
    ADD CONSTRAINT preguntas_test_fk FOREIGN KEY ( test_id_test )
        REFERENCES test ( id_test );

ALTER TABLE relacion_alumno_test
    ADD CONSTRAINT relacion_alumno_test_alumno_fk FOREIGN KEY ( alumno_id_alumno )
        REFERENCES alumno ( id_alumno );

ALTER TABLE relacion_alumno_test
    ADD CONSTRAINT relacion_alumno_test_test_fk FOREIGN KEY ( test_id_test )
        REFERENCES test ( id_test );

ALTER TABLE test
    ADD CONSTRAINT test_unidad_fk FOREIGN KEY ( unidad_id_unidad )
        REFERENCES unidad ( id_unidad );

ALTER TABLE unidad
    ADD CONSTRAINT unidad_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             14
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

INSERT INTO "NUEVO"."CURSO" (ID_CURSO, NOMBRE_CURSO) VALUES ('1', 'Manufactura_De_Completos');
INSERT INTO "NUEVO"."CURSO" (ID_CURSO, NOMBRE_CURSO) VALUES ('2', 'Teoria Del Coctel');
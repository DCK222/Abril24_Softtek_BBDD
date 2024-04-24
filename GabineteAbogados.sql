-- ejercicio 1
CREATE TABLE cliente(
dni SERIAL PRIMARY KEY,
id_cliente INTEGER,
nombre VARCHAR(100),
Direccion VARCHAR(100)
);
CREATE TABLE procuradores(
dni SERIAL PRIMARY KEY,
id_procurador INTEGER,
nombre VARCHAR(255),
Direccion VARCHAR(255)
);
CREATE TABLE asuntos(
numero_Expediente SERIAL PRIMARY KEY NOT NULL,
tramite VARCHAR(20) CHECK (tramite IN ('En tramite', 'Archivado')),
fecha_Inicio DATE,
fecha_fin DATE,
id_cliente INTEGER REFERENCES cliente,
id_procurador INTEGER REFERENCES procuradores
);


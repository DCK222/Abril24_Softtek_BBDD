CREATE TABLE provincia(
    id_provincia SERIAL PRIMARY KEY NOT NULL,
    nombre VARCHAR(255),
    extension INTEGER
);

CREATE TABLE almacenes(
    id_almacen SERIAL PRIMARY KEY NOT NULL,
    fapertura VARCHAR(255),
    direccion VARCHAR(255),
    id_provincia INTEGER REFERENCES provincia
);

CREATE TABLE poblaciones(
    idPoblacion SERIAL PRIMARY KEY NOT NULL,
    habitantes INTEGER,
    nombre VARCHAR(255),
    Id_provincia INTEGER REFERENCES provincia
);

CREATE TABLE colecciones(
    idcoleccion SERIAL PRIMARY KEY NOT NULL,
    volumen INTEGER
);

CREATE TABLE libros(
    titulo VARCHAR(255),
    isbn VARCHAR(255) PRIMARY KEY NOT NULL,
    autor VARCHAR(255),
    editorial VARCHAR(255),
    idcoleccion INTEGER REFERENCES colecciones
);

CREATE TABLE detalle_pedido(
    id_pedido INTEGER NOT NULL,
    consecutivo INTEGER NOT NULL,
    isbn VARCHAR(255) REFERENCES libros(isbn),
    cantidad INTEGER,
    PRIMARY KEY (id_pedido, consecutivo)
);

CREATE TABLE stock(
    cantidad INTEGER,
    idalmacen INTEGER REFERENCES almacenes,
    isbn VARCHAR(255) REFERENCES libros(isbn)
);

CREATE TABLE socios(
    Id_socio SERIAL PRIMARY KEY NOT NULL,
    telefono INTEGER,
    DNI VARCHAR(255),
    nombre VARCHAR(255),
    apellidos VARCHAR(255),
    idPoblacion INTEGER REFERENCES poblaciones,
    idSocioAvalador INTEGER REFERENCES socios
);

CREATE TABLE pedido(
    Id_pedido SERIAL PRIMARY KEY NOT NULL,
    forma_envio VARCHAR(255),
    forma_pago VARCHAR(255),
    Id_socio INTEGER REFERENCES socios
);
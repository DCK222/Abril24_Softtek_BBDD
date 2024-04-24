CREATE TABLE socio(
DNI SERIAL PRIMARY KEY,
nombre VARCHAR(255),
apellido VARCHAR(255),
direccion VARCHAR(255),
id_socio INTEGER
);

CREATE TABLE barco(
n_matricula SERIAL PRIMARY KEY NOT NULL,
nombre VARCHAR(255),
numero_amarre INTEGER,
cuota INTEGER,
id_socio INTEGER REFERENCES socio

);

CREATE TABLE patron(
	DNI SERIAL PRIMARY KEY NOT NULL,
	nombre VARCHAR(255),
	apellido VARCHAR(255),
	direccion VARCHAR(255)
	
);

CREATE TABLE salida(
id_salida SERIAL PRIMARY KEY NOT NULL,
fecha DATE,
h_salida DATE,
detino VARCHAR(255),
n_matricula INTEGER REFERENCES barco,
DNI INTEGER REFERENCES patron
);

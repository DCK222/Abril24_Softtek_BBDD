CREATE TABLE zoo(
id_zoo SERIAL primary key NOT NULL,
Pais VARCHAR(100),
Ciudad VARCHAR(100),
Nombre VARCHAR(100),
Presupuesto_anual INTEGER
	
);
CREATE TABLE especies(
id_especie SERIAL PRIMARY KEY NOT NULL,
n_cientifico VARCHAR(100),
n_vulgar VARCHAR(100),
peligro_extinicion BOOLEAN,
familia VARCHAR(100)

);
CREATE TABLE animales (
    id_animal SERIAL PRIMARY KEY NOT NULL,
    pais_origen VARCHAR(100),
    sexo CHAR(1),
    continente VARCHAR(100),
    nacimiento DATE,
    id_zoo INTEGER REFERENCES zoo,
    id_especie INTEGER REFERENCES especies
);




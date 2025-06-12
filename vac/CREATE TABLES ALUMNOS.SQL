CREATE TABLE edades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    edad INT NOT NULL UNIQUE
);

CREATE TABLE colonias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_colonia VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE especialidades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_especialidad VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE generos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_genero VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE alumno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero_control VARCHAR(10) UNIQUE NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido_paterno VARCHAR(50) NOT NULL,
    apellido_materno VARCHAR(50),
    id_edad INT NOT NULL,
    id_colonia INT NOT NULL,
    id_especialidad INT NOT NULL,
    id_genero INT NOT NULL,
    correo VARCHAR(50) UNIQUE,
    telefono VARCHAR(15),
    fecha_ingreso DATE NOT NULL,
    FOREIGN KEY (id_edad) REFERENCES edades(id),
    FOREIGN KEY (id_colonia) REFERENCES colonias(id),
    FOREIGN KEY (id_especialidad) REFERENCES especialidades(id),
    FOREIGN KEY (id_genero) REFERENCES generos(id)
);

-- Inserción de datos en edades
INSERT INTO edades (edad) VALUES 
(14), (15), (16), (17), (18), (19);

-- Inserción de datos en colonias
INSERT INTO colonias (nombre_colonia) VALUES 
('Jarachina Norte'), ('Jarachina Sur'), ('Granjas'), 
('Vista Hermosa'), ('Esfuerzo'), ('Fresnos'), 
('Progreso'), ('Bugambilias'), ('Ventura'), 
('Loma Real'), ('Campestre'), ('Vista Alta');

-- Inserción de datos en especialidades
INSERT INTO especialidades (nombre_especialidad) VALUES 
('Programación'), ('Mantenimiento Industrial'), 
('Mantenimiento de Cómputo'), ('Administración de Recursos Humanos'), 
('Ciberseguridad'), ('Logística'), ('Preparación de Alimentos'), 
('Electrónica'), ('Construcción'), ('Mecatrónica'), 
('Comercio Internacional'), ('Hotelería');

-- Inserción de datos en géneros
INSERT INTO generos (nombre_genero) VALUES 
('Hombre'), ('Mujer'), ('Otro');

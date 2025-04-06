use creativoDB


-- Insert records into the table Admins (Administrators of the Creative Club)
INSERT INTO Admins (IdAdmin, Username, Password, FirstName, LastName)
VALUES
    (2378954,'admin1', '1234', 'Alejandro', 'Gomez'),
    (2374573,'admin2', '1234', 'Maria', 'Martinez'),
    (2390847,'admin3', '1234', 'Carlos', 'Sanchez'),
    (1234234,'admin4', '1234', 'Laura', 'Perez'),
    (5647343,'admin5', '1234', 'Javier', 'Lopez');

-- Insert first and second delivery persons
INSERT INTO Delivery_Person (IdDeliveryPerson, Username, Password, Firstname, Lastname, State, Province, Canton, District, Phone, Email
) VALUES 
(1, 'd1', '1234', 'John', 'Doe', 'State1', 'Province1', 'Canton1', 'District1', '123-456-7890', 'john.doe@example.com'),
(2, 'd2', '1234', 'Jane', 'Smith', 'State2', 'Province2', 'Canton2', 'District2', '098-765-4321', 'jane.smith@example.com');



-- Insert records into the table Question (Frequently Asked Questions of the Creative Club)
INSERT INTO Questions(QuestionText, Answer)
VALUES
    ('¿Cómo puedo participar en las ferias del Club Creativo?', 'Para participar, regístrate como emprendedor en nuestro sitio web y envía tu propuesta creativa.'),
    ('¿Cuándo son las próximas ferias de arte?', 'Consulta nuestro calendario en línea para conocer las fechas de nuestras próximas ferias.'),
    ('¿Hay algún costo asociado a la participación en las ferias?', 'Sí, hay una tarifa de participación que varía según el tipo de emprendimiento y el espacio solicitado.'),
    ('¿Puedo participar como artista individual?', '¡Claro! Aceptamos participantes individuales y grupos creativos.'),
    ('¿Cómo puedo contactar al equipo del Club Creativo?', 'Puedes contactarnos a través de nuestro correo electrónico info@clubcreativo.com o llamando al 8759-0323.');

-- Insert into ENTREPRENEURSHIP
INSERT INTO ENTREPRENEURSHIP (IdEntrepreneurship, Username, Type, Name, Email, Sinpe, Phone, Province, Canton, District, State, IdType, Description, Reason)
VALUES
    (8293401, 'e7', 'Arte', 'Galeria Creativa', 'galeria@example.com', '87649076', '87650938', 'San Jose', 'Escazu', 'Distrito1', 'Pendiente', 'Fisica', 'Prueba', ''),
    (2342355, 'e2', 'Cocina', 'Sabores Innovadores', 'sabores@example.com', '289648375', '89765903', 'Heredia', 'Belen', 'Distrito2', 'Pendiente', 'Fisica', 'Prueba', ''),
    (2346236, 'e3', 'Manualidades', 'Hecho a Mano', 'hechoamano@example.com', '70986345', '72348593', 'Cartago', 'Cartago', 'Distrito3', 'Pendiente', 'Fisica', 'Prueba', ''),
    (2356346, 'e4', 'Moda', 'Estilo Creativo', 'estilo@example.com', '88769504', '70987345', 'Alajuela', 'Alajuela', 'Distrito4', 'Pendiente', 'Fisica', 'Prueba', ''),
    (3452323, 'e5', 'Fotografia', 'Capturas Creativas', 'capturas@example.com', '61897658', '89764903', 'Puntarenas', 'Puntarenas', 'Distrito5', 'Pendiente', 'Fisica', 'Prueba', '');

-- Insertar todos los tipos de redes sociales y pagina web en un solo comando
INSERT INTO Social_Type(type)
VALUES 
    ('Facebook'),
    ('Tiktok'),
    ('Instagram'),
    ('Twitter'),
    ('WebPage');

-- Insertar informacion de redes sociales para cada emprendimiento
INSERT INTO Social (Username, Type, Link)
VALUES
    ('e7', 'Facebook', 'https://www.facebook.com/galeriacreativa'),
    ('e7', 'Instagram', 'https://www.instagram.com/galeriacreativa'),
    ('e2', 'Facebook', 'https://www.facebook.com/saboresinnovadores'),
    ('e2', 'Twitter', 'https://twitter.com/saboresinnovadores'),
    ('e3', 'Instagram', 'https://www.instagram.com/hechoamano'),
    ('e3', 'Tiktok', 'https://www.tiktok.com/@hechoamano'),
    ('e4', 'Facebook', 'https://www.facebook.com/estilocreativo'),
    ('e4', 'Instagram', 'https://www.instagram.com/estilocreativo'),
    ('e5', 'Instagram', 'https://www.instagram.com/capturascreativas'),
    ('e5', 'WebPage', 'https://www.capturascreativas.com');

-- Ingreso de tipo de emprendimientos
INSERT INTO Entrepreneurship_Type (type) VALUES 
    ('Comida'),
    ('Collares'),
    ('Dibujo'),
    ('Arte'),
    ('Ropa'),
    ('Decoracion'),
    ('Joyeria'),
    ('Tecnologia'),
    ('Fotografia'),
    ('Manualidades'),
    ('Otros');


-- Insertar usuario 1
INSERT INTO Client (IdClient, Username, Password, Email, FirstName, LastName, Phone, Province, Canton, District)
VALUES 
	(1234, 'u1', '1234', 'example1@gmail.com',  'Nombre1', 'Apellido1', '123456789', 'San Jose', 'San Jose', 'San Jose'),
	(4321, 'u2', '1234', 'example2@gmail.com', 'Nombre2', 'Apellido2', '987654321', 'Heredia', 'Heredia', 'Heredia');

-- Insertar una fila en Entrepreneurship_Admins
INSERT INTO Entrepreneurship_Admins (IdEntrepreneurship, IdClient, state)
VALUES 
	('e5', 'u1', 'Aceptado'),
	('e2', 'u1', 'Pendiente'),
	('e3', 'u1', 'Aceptado'),
	('e7', 'u1', 'Aceptado'),
	('e2', 'u2', 'Aceptado'),
	('e4', 'u2', 'Aceptado'),
	('e5', 'u2', 'Pendiente');




-- Insertar datos en la tabla Province
INSERT INTO Province (Name) VALUES 
('San Jose');

-- Insertar datos en la tabla Province
INSERT INTO Province (Name) VALUES 
('Heredia');

-- Insertar datos en la tabla Canton
INSERT INTO Canton (Name, Province) VALUES
('Heredia', 'Heredia'),
('Barva', 'Heredia'),
('Santo Domingo', 'Heredia'),
('Santa Barbara', 'Heredia'),
('San Rafael', 'Heredia');


-- Insertar datos en la tabla District
INSERT INTO Distric (Name, Canton) VALUES
('Heredia', 'Heredia'),
('Mercedes', 'Heredia'),
('San Francisco', 'Heredia'),
('Ulloa', 'Heredia'),
('Varablanca', 'Heredia'),
('Barva', 'Barva'),
('San Pedro', 'Barva'),
('San Pablo', 'Barva'),
('San Roque', 'Barva'),
('Santa Lucia', 'Barva'),
('San Josr de la Montana', 'Barva'),
('Santo Domingo', 'Santo Domingo'),
('San Vicente', 'Santo Domingo'),
('San Miguel', 'Santo Domingo'),
('Paracito', 'Santo Domingo'),
('Santo Tomas', 'Santo Domingo'),
('Santa Rosa', 'Santo Domingo'),
('Santa Barbara', 'Santa Barbara'),
('San Juan', 'Santa Barbara'),
('Jesus', 'Santa Barbara'),
('Puraba', 'Santa Barbara'),
('San Rafael', 'San Rafael'),
('San Josecito', 'San Rafael'),
('Santiago', 'San Rafael'),
('Angeles', 'San Rafael'),
('Concepcion', 'San Rafael'),
('San Isidro', 'San Rafael');


-- Insertar datos en la tabla Canton
INSERT INTO Canton (Name, Province) VALUES
('San Jose', 'San Jose'),
('Escazu', 'San Jose'),
('Desamparados', 'San Jose'),
('Puriscal', 'San Jose'),
('Tarrazu', 'San Jose'),
('Aserri', 'San Jose'),
('Mora', 'San Jose'),
('Goicoechea', 'San Jose'),
('Santa Ana', 'San Jose'),
('Alajuelita', 'San Jose'),
('Vazquez de Coronado', 'San Jose'),
('Acosta', 'San Jose'),
('Tibas', 'San Jose'),
('Moravia', 'San Jose'),
('Montes de Oca', 'San Jose'),
('Turrubares', 'San Jose'),
('Dota', 'San Jose'),
('Curridabat', 'San Jose'),
('Perez Zeledon', 'San Jose'),
('Leon Cortes Castro', 'San Jose');


-- Insertar datos en la tabla District
INSERT INTO Distric (Name, Canton) VALUES
('San Jose', 'San Jose'),
('Escazu', 'Escazu'),
('Desamparados', 'Desamparados'),
('Santiago', 'Desamparados'),
('San Rafael Arriba', 'Desamparados'),
('San Antonio', 'Desamparados'),
('San Cristobal', 'Desamparados'),
('Rosario', 'Desamparados'),
('Damas', 'Desamparados'),
('San Juan de Dios', 'Desamparados'),
('Gravilias', 'Desamparados'),
('Los Guido', 'Desamparados'),
('Sanchez', 'Desamparados'),
('San Miguel', 'Desamparados'),
('San Juan', 'Desamparados'),
('San Rafael Abajo', 'Desamparados'),
('Colon', 'Puriscal'),
('Puriscal', 'Puriscal'),
('Santiago', 'Puriscal'),
('Mercedes Sur', 'Puriscal'),
('Barbacoas', 'Puriscal'),
('Grifo Alto', 'Puriscal'),
('San Rafael', 'Puriscal'),
('Candelarita', 'Puriscal'),
('Desamparaditos', 'Puriscal'),
('San Antonio', 'Puriscal'),
('Chires', 'Puriscal'),
('Aserri', 'Aserri'),
('Tarbaca', 'Aserri'),
('Vuelta de Jorco', 'Aserri'),
('San Gabriel', 'Aserri'),
('Legua', 'Aserri'),
('Monterrey', 'Aserri'),
('Salitrillos', 'Aserri'),
('San Isidro', 'Mora'),
('Colon', 'Mora'),
('Guayabo', 'Mora'),
('Tabarcia', 'Mora'),
('Piedras Negras', 'Mora'),
('Jaris', 'Mora'),
('Quitirrisi', 'Mora'),
('Ipis', 'Goicoechea'),
('Rancho Redondo', 'Goicoechea'),
('Purral', 'Goicoechea'),
('Sabanilla', 'Goicoechea'),
('Uruca', 'Goicoechea'),
('Mata Redonda', 'Goicoechea'),
('Pavas', 'Goicoechea'),
('Anselmo Llorente', 'Santa Ana'),
('Santa Ana', 'Santa Ana'),
('Salitral', 'Santa Ana'),
('Piedades', 'Santa Ana'),
('Brasil', 'Santa Ana'),
('Alajuelita', 'Alajuelita'),
('San Josecito', 'Alajuelita'),
('San Antonio', 'Alajuelita'),
('Concepcion', 'Vazquez de Coronado'),
('San Isidro', 'Vazquez de Coronado'),
('San Rafael', 'Vazquez de Coronado'),
('Dulce Nombre de Jesus', 'Vazquez de Coronado'),
('Patalillo', 'Vazquez de Coronado'),
('Cascajal', 'Vazquez de Coronado'),
('San Juan', 'Acosta'),
('San Ignacio', 'Acosta'),
('Guaitil', 'Acosta'),
('Palmichal', 'Acosta'),
('Cipreses', 'Acosta'),
('San Jose', 'Tibas'),
('Cinco Esquinas', 'Tibas'),
('Anselmo Llorente', 'Tibas'),
('Leon XIII', 'Tibas'),
('Colima', 'Tibas'),
('San Juan', 'Moravia'),
('La Trinidad', 'Moravia'),
('San Vicente', 'Moravia'),
('San Jeronimo', 'Moravia'),
('San Diego', 'Moravia'),
('San Rafael', 'Moravia'),
('San Luis', 'Moravia'),
('San Pedro', 'Montes de Oca'),
('Sabanilla', 'Montes de Oca'),
('Mercedes', 'Montes de Oca'),
('San Rafael', 'Montes de Oca'),
('San Antonio', 'Montes de Oca'),
('Concepcion', 'Montes de Oca'),
('San Juan de Mata', 'Turrubares'),
('San Luis', 'Turrubares'),
('Carara', 'Turrubares'),
('Copey', 'Turrubares'),
('Jardin', 'Turrubares'),
('Dota', 'Dota'),
('Santa Maria', 'Dota'),
('Jardin', 'Dota'),
('Copey', 'Dota'),
('San Francisco de Dos Rios', 'Curridabat'),
('Cipreses', 'Curridabat'),
('Curridabat', 'Curridabat'),
('Granadilla', 'Curridabat'),
('Sanchez', 'Curridabat'),
('Tirrases', 'Curridabat'),
('Rio Nuevo', 'Perez Zeledon'),
('Paramo', 'Perez Zeledon'),
('La Palma', 'Perez Zeledon'),
('Rivas', 'Perez Zeledon'),
('San Isidro de El General', 'Perez Zeledon'),
('Pejibaye', 'Perez Zeledon'),
('La Amistad', 'Perez Zeledon'),
('Platanares', 'Perez Zeledon'),
('Baru', 'Perez Zeleden'),
('Cajon', 'Perez Zeledon'),
('La Colonia', 'Leon Cortes Castro'),
('San Antonio', 'Leon Cortes Castro'),
('San Isidro', 'Leon Cortes Castro');



-- Insertar datos en la tabla Province
INSERT INTO Province (Name) VALUES 
('Cartago');

-- Insertar datos en la tabla Canton
INSERT INTO Canton (Name, Province) VALUES
('Cartago', 'Cartago'),
('Paraiso', 'Cartago'),
('La Union', 'Cartago'),
('Jimenez', 'Cartago'),
('Turrialba', 'Cartago');


-- Insertar datos en la tabla District
INSERT INTO Distric (Name, Canton) VALUES
('Oriental', 'Cartago'),
('Occidental', 'Cartago'),
('Carmen', 'Cartago'),
('San Nicolas', 'Cartago'),
('Agua Caliente', 'Cartago'),
('Guadalupe', 'Paraiso'),
('Santa Lucia', 'Paraiso'),
('Corralillo', 'Paraiso'),
('Tierra Blanca', 'Paraiso'),
('Cot', 'La Union'),
('Cipreses', 'La Union'),
('Santa Rosa', 'La Union'),
('Zurqui', 'La Union'),
('Pejibaye', 'Jimenez'),
('Juan Vinas', 'Jimenez'),
('Tucurrique', 'Jimenez'),
('Turrialba', 'Turrialba'),
('La Suiza', 'Turrialba'),
('Peralta', 'Turrialba'),
('Santa Cruz', 'Turrialba'),
('Santa Teresita', 'Turrialba');



-- Insertar datos en la tabla Province
INSERT INTO Province (Name) VALUES 
('Alajuela');

-- Insertar datos en la tabla Canton
INSERT INTO Canton (Name, Province) VALUES
('Alajuela', 'Alajuela'),
('San Ramon', 'Alajuela'),
('Grecia', 'Alajuela'),
('San Mateo', 'Alajuela'),
('Atenas', 'Alajuela'),
('Naranjo', 'Alajuela'),
('Palmares', 'Alajuela'),
('Poas', 'Alajuela'),
('Orotina', 'Alajuela'),
('San Carlos', 'Alajuela'),
('Zarcero', 'Alajuela'),
('Valverde Vega', 'Alajuela'),
('Upala', 'Alajuela'),
('Los Chiles', 'Alajuela'),
('Guatuso', 'Alajuela');

-- Insertar datos en la tabla District
INSERT INTO Distric (Name, Canton) VALUES
('Alajuela', 'Alajuela'),
('San Jose', 'Alajuela'),
('Carrizal', 'Alajuela'),
('San Antonio', 'Alajuela'),
('Guacima', 'Alajuela'),
('San Isidro', 'Alajuela'),
('Sabanilla', 'Alajuela'),
('San Rafael', 'Alajuela'),
('Rio Segundo', 'Alajuela'),
('Desamparados', 'Alajuela'),
('Turrucares', 'Alajuela'),
('Tambor', 'Alajuela'),
('Garita', 'Alajuela'),
('Sarapiqui', 'Alajuela'),
('Alegria', 'San Ramon'),
('San Juan', 'San Ramon'),
('San Rafael', 'San Ramon'),
('San Isidro', 'San Ramon'),
('Angeles', 'San Ramon'),
('Alfaro', 'Grecia'),
('Puente de Piedra', 'Grecia'),
('San Jose', 'Grecia'),
('San Roque', 'Grecia'),
('Tacares', 'Grecia'),
('Monserrat', 'San Mateo'),
('Coyolar', 'San Mateo'),
('Desmonte', 'San Mateo'),
('San Mateo', 'San Mateo'),
('Concepcion', 'Atenas'),
('San Jose', 'Atenas'),
('Jesus', 'Atenas'),
('Mercedes', 'Atenas'),
('San Isidro', 'Atenas'),
('San Juan', 'Naranjo'),
('San Jose', 'Naranjo'),
('Cirra Sur', 'Naranjo'),
('Rosario', 'Naranjo'),
('Palmares', 'Palmares'),
('Zaragoza', 'Palmares'),
('Buenos Aires', 'Palmares'),
('Santiago', 'Palmares'),
('San Pedro', 'Poas'),
('San Juan', 'Poas'),
('San Rafael', 'Poas'),
('Carrillos', 'Poas'),
('Mastate', 'Orotina'),
('Coyolar', 'Orotina'),
('Hacienda Vieja', 'Orotina'),
('La Ceiba', 'Orotina'),
('Pital', 'San Carlos'),
('La Fortuna', 'San Carlos'),
('La Tigra', 'San Carlos'),
('La Palmera', 'San Carlos'),
('Venado', 'San Carlos'),
('San Carlos', 'San Carlos'),
('Zarcero', 'Zarcero'),
('Laguna', 'Zarcero'),
('Tapezco', 'Zarcero'),
('Guadalupe', 'Valverde Vega'),
('Palmira', 'Valverde Vega'),
('Buenavista', 'Valverde Vega'),
('Sarchi Norte', 'Valverde Vega'),
('Delicias', 'Valverde Vega'),
('San Jose', 'Upala'),
('Upala', 'Upala'),
('Aguas Claras', 'Upala'),
('San Jose', 'Los Chiles'),
('Cano Negro', 'Los Chiles'),
('El Amparo', 'Los Chiles'),
('San Jorge', 'Los Chiles'),
('San Rafael', 'Los Chiles'),
('Katira', 'Guatuso'),
('San Jose', 'Guatuso'),
('San Antonio', 'Guatuso'),
('San Lorenzo', 'Guatuso'),
('Santa Rita', 'Guatuso');


-- Insertar datos en la tabla Province
INSERT INTO Province (Name) VALUES 
('Puntarenas');

-- Insertar datos en la tabla Canton
INSERT INTO Canton (Name, Province) VALUES
('Puntarenas', 'Puntarenas'),
('Esparza', 'Puntarenas'),
('Buenos Aires', 'Puntarenas'),
('Montes de Oro', 'Puntarenas'),
('Osa', 'Puntarenas'),
('Aguirre', 'Puntarenas'),
('Golfito', 'Puntarenas'),
('Coto Brus', 'Puntarenas'),
('Parrita', 'Puntarenas'),
('Corredores', 'Puntarenas');

-- Insertar datos en la tabla District
INSERT INTO Distric (Name, Canton) VALUES
('Puntarenas', 'Puntarenas'),
('Chomes', 'Puntarenas'),
('Lepanto', 'Puntarenas'),
('Paquera', 'Puntarenas'),
('Manzanillo', 'Puntarenas'),
('Guacimal', 'Puntarenas'),
('Barranca', 'Puntarenas'),
('Monteverde', 'Puntarenas'),
('Isla del Coco', 'Puntarenas'),
('Cobano', 'Puntarenas'),
('Espiritu Santo', 'Esparza'),
('San Juan Grande', 'Esparza'),
('Macacona', 'Esparza'),
('San Rafael', 'Esparza'),
('San Jeronimo', 'Esparza'),
('Boruca', 'Buenos Aires'),
('Buenos Aires', 'Buenos Aires'),
('Volcan', 'Buenos Aires'),
('Potrero Grande', 'Buenos Aires'),
('Bijagual', 'Montes de Oro'),
('Miramar', 'Montes de Oro'),
('La Union', 'Montes de Oro'),
('Aguabuena', 'Montes de Oro'),
('Ciudad Cortes', 'Osa'),
('Palmar', 'Osa'),
('Sierpe', 'Osa'),
('Bahia Ballena', 'Osa'),
('Pavon', 'Osa'),
('Puerto Cortes', 'Aguirre'),
('Palmar Norte', 'Aguirre'),
('Sierpe', 'Aguirre'),
('Golfito', 'Golfito'),
('Puerto Jimenez', 'Golfito'),
('Guaycara', 'Golfito'),
('Pavon', 'Golfito'),
('San Vito', 'Coto Brus'),
('Sabalito', 'Coto Brus'),
('Agua Buena', 'Coto Brus'),
('Limoncito', 'Coto Brus'),
('Parrita', 'Parrita'),
('Damitas', 'Parrita'),
('Juntas', 'Parrita'),
('Macacona', 'Parrita'),
('La Cuesta', 'Corredores'),
('Paso Canoas', 'Corredores'),
('Laurel', 'Corredores'),
('Ciudad Neily', 'Corredores');


-- Insertar datos en la tabla Province
INSERT INTO Province (Name) VALUES 
('Guanacaste');

-- Insertar datos en la tabla Canton
INSERT INTO Canton (Name, Province) VALUES
('Liberia', 'Guanacaste'),
('Nicoya', 'Guanacaste'),
('Santa Cruz', 'Guanacaste'),
('Bagaces', 'Guanacaste'),
('Carrillo', 'Guanacaste'),
('Canas', 'Guanacaste'),
('Abangares', 'Guanacaste'),
('Tilaran', 'Guanacaste'),
('Nandayure', 'Guanacaste'),
('La Cruz', 'Guanacaste'),
('Hojancha', 'Guanacaste');

-- Insertar datos en la tabla District
INSERT INTO Distric (Name, Canton) VALUES
('Liberia', 'Liberia'),
('Canas Dulces', 'Liberia'),
('Mayorga', 'Liberia'),
('Nacascolo', 'Liberia'),
('Curubanda', 'Liberia'),
('Nicoya', 'Nicoya'),
('Mansion', 'Nicoya'),
('San Antonio', 'Nicoya'),
('Quebrada Honda', 'Nicoya'),
('Samara', 'Nicoya'),
('Belen de Nosarita', 'Nicoya'),
('Santa Cruz', 'Santa Cruz'),
('Bolson', 'Santa Cruz'),
('Veintisiete de Abril', 'Santa Cruz'),
('Tempate', 'Santa Cruz'),
('Cartagena', 'Santa Cruz'),
('Cuajiniquil', 'Santa Cruz'),
('Bagaces', 'Bagaces'),
('Fortuna', 'Bagaces'),
('Mogote', 'Bagaces'),
('Rio Naranjo', 'Bagaces'),
('La Garita', 'Bagaces'),
('Filadelfia', 'Carrillo'),
('Palmira', 'Carrillo'),
('Sardinal', 'Carrillo'),
('Belen', 'Carrillo'),
('Santa Rosa', 'Carrillo'),
('Liberia', 'Canas'),
('Canas', 'Canas'),
('Palmira', 'Canas'),
('San Miguel', 'Canas'),
('Bebedero', 'Canas'),
('Porozal', 'Canas'),
('Las Juntas', 'Abangares'),
('Sierra', 'Abangares'),
('San Juan', 'Abangares'),
('Colorado', 'Abangares'),
('Canjel', 'Abangares'),
('Tilaran', 'Tilaran'),
('Quebrada Grande', 'Tilaran'),
('Tronadora', 'Tilaran'),
('Libano', 'Tilaran'),
('Tierras Morenas', 'Tilaran'),
('Carmona', 'Nandayure'),
('Santa Rita', 'Nandayure'),
('Zapotillal', 'Nandayure'),
('San Pablo', 'Nandayure'),
('Porvenir', 'Nandayure'),
('La Cruz', 'La Cruz'),
('Santa Cecilia', 'La Cruz'),
('La Garita', 'La Cruz'),
('Santa Elena', 'La Cruz'),
('Cuajiniquil', 'La Cruz'),
('Hojancha', 'Hojancha'),
('Monte Romo', 'Hojancha'),
('Puerto Carrillo', 'Hojancha'),
('Huacas', 'Hojancha'),
('Matambu', 'Hojancha');



-- Insertar datos en la tabla Province
INSERT INTO Province (Name) VALUES 
('Limon');

-- Insertar datos en la tabla Canton
INSERT INTO Canton (Name, Province) VALUES
('Limon', 'Limon'),
('Pococi', 'Limon'),
('Siquirres', 'Limon'),
('Talamanca', 'Limon'),
('Matina', 'Limon');

-- Insertar datos en la tabla District
INSERT INTO Distric (Name, Canton) VALUES
('Limon', 'Limon'),
('Valle La Estrella', 'Limon'),
('Liverpool', 'Limon'),
('Matama', 'Limon'),
('Rio Blanco', 'Limon'),
('Guapiles', 'Pococi'),
('Jimenez', 'Pococi'),
('La Rita', 'Pococi'),
('Roxana', 'Pococi'),
('Cariari', 'Pococi'),
('Siquirres', 'Siquirres'),
('Pacuarito', 'Siquirres'),
('Florida', 'Siquirres'),
('Alegria', 'Siquirres'),
('La Colonia', 'Siquirres'),
('Bratsi', 'Talamanca'),
('Sixaola', 'Talamanca'),
('Cahuita', 'Talamanca'),
('Telire', 'Talamanca'),
('Matina', 'Matina'),
('Batain', 'Matina'),
('Carrandi', 'Matina'),
('Guacimo', 'Matina'),
('Guadalupe', 'Matina'),
('Santa Rosa', 'Matina');

CREATE TABLE producto(fabricante TEXT NOT NULL, modelo INT PRIMARY KEY, tipo TEXT NOT NULL);
CREATE TABLE pc(modelo INT, velocidad FLOAT, ram FLOAT, disco FLOAT, precio FLOAT, PRIMARY KEY (modelo,velocidad,ram,disco), FOREIGN KEY (modelo) REFERENCES producto(modelo));
CREATE TABLE printer(modelo INT, color INT, disco FLOAT, precio FLOAT, PRIMARY KEY (modelo,disco), FOREIGN KEY (modelo) REFERENCES producto(modelo));
CREATE TABLE laptop(modelo INT,velocidad FLOAT,ram FLOAT,disco FLOAT,pantalla INT,precio FLOAT, PRIMARY KEY (modelo,velocidad,ram,disco) ,FOREIGN KEY (modelo) REFERENCES producto(modelo));

INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',5915,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (5915,3.0,4,3,720,1920);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',3745,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (3745,2.0,4,3,720,3061);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',7938,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (7938,2.6,4,1,4491);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',4693,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (4693,3.0,8,1,1080,4031);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',3268,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (3268,3.0,8,3,1080,3826);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',1950,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (1950,3.4,8,1,2292);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',1074,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (1074,'1',3,2882);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',8417,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (8417,3.4,8,3,1080,1173);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',5189,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (5189,2.0,4,3,720,1285);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',4531,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (4531,3.4,4,3,720,4324);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',3513,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (3513,'1',1,4244);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',9752,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (9752,3.0,4,1,720,2713);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',3278,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (3278,1.8,4,4,720,3448);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',529,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (529,'0',3,1720);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',2994,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (2994,2.0,8,3,1080,4268);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',3528,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (3528,1.8,8,1,4311);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',8085,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (8085,3.4,8,2,1080,4960);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',4445,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (4445,'1',1,4970);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',4246,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (4246,3.0,8,4,1080,4252);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',6317,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (6317,'1',3,4698);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',1423,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (1423,'0',1,1140);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',3825,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (3825,'0',3,3626);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',8640,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (8640,'1',2,1552);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',7264,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (7264,1.8,4,4,1738);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',9667,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (9667,'0',4,2086);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',7386,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (7386,2.6,8,4,2740);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',7699,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (7699,2.0,4,4,2741);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',7399,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (7399,2.6,8,4,1080,1277);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',3414,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (3414,'0',4,2566);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',5530,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (5530,'0',3,4666);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',1307,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (1307,3.4,4,4,720,3277);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',594,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (594,'0',1,1079);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',7665,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (7665,2.0,4,1,3492);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',4033,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (4033,1.8,8,1,1080,3506);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',3955,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (3955,3.0,8,3,3415);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',2855,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (2855,'0',3,2462);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',5086,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (5086,3.0,8,1,1080,3546);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',278,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (278,3.0,8,1,1080,2456);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',453,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (453,'1',2,3261);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',2813,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (2813,'1',2,3796);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',1076,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (1076,3.4,4,1,3978);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',7761,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (7761,'1',4,3789);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',3498,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (3498,3.4,8,4,1906);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',3750,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (3750,'1',1,3442);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',9736,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (9736,2.6,8,3,1080,4953);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',3817,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (3817,3.4,8,3,1971);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',4911,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (4911,3.4,4,2,4221);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',2416,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (2416,1.8,4,3,4208);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',5286,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (5286,3.0,8,1,2974);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',5742,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (5742,'1',2,3670);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',5012,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (5012,2.0,8,1,2200);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',4068,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (4068,3.0,4,3,720,4631);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',7322,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (7322,1.8,4,3,3574);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',3014,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (3014,1.8,4,4,1770);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',4408,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (4408,1.8,8,3,1080,2779);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',542,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (542,'0',1,3262);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',8486,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (8486,3.0,4,4,1983);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',7250,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (7250,'1',4,3073);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',2439,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (2439,3.4,4,4,3397);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',8575,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (8575,2.0,4,1,2253);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',950,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (950,2.0,4,1,720,4909);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',1439,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (1439,'1',1,3435);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',8638,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (8638,'0',1,3282);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',9590,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (9590,'0',4,4344);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',3194,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (3194,3.4,4,2,720,2724);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',3827,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (3827,2.6,4,1,720,4760);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',6708,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (6708,2.0,8,2,1080,2120);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',137,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (137,'1',2,2757);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',3567,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (3567,'1',1,3555);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',3614,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (3614,1.8,8,4,1080,1392);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',1132,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (1132,2.0,4,3,1535);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',3225,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (3225,3.0,4,1,4359);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',8603,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (8603,'0',4,3046);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',7791,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (7791,1.8,8,1,1080,4292);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',6054,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (6054,'1',2,4502);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',2120,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (2120,'1',2,3586);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',9115,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (9115,'1',1,1443);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',3939,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (3939,'0',4,4771);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',4493,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (4493,'1',2,2576);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',3300,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (3300,3.4,4,1,3782);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',5901,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (5901,1.8,8,4,1080,3411);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',3330,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (3330,2.6,4,4,720,3241);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',5224,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (5224,2.0,8,3,4604);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',9226,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (9226,3.4,4,4,720,2299);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',5011,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (5011,1.8,8,3,2411);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',9183,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (9183,3.0,8,2,2497);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',9731,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (9731,'0',2,3264);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',8935,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (8935,2.0,8,1,1080,2995);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('D',4578,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (4578,'0',4,2251);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',5646,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (5646,3.4,4,2,1174);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',7141,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (7141,2.6,4,1,2531);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('C',9750,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (9750,2.0,4,3,2693);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',5882,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (5882,3.0,8,2,1215);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',6003,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (6003,1.8,4,2,2011);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',5452,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (5452,3.4,8,2,1080,1874);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',3013,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (3013,'1',1,2449);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',7646,'pc');
INSERT INTO pc(modelo,velocidad,ram,disco,precio) VALUES (7646,3.0,8,2,3034);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('B',7276,'impresora');
INSERT INTO printer(modelo,color,disco,precio) VALUES (7276,'1',2,3890);
INSERT INTO producto(fabricante,modelo,tipo) VALUES ('A',1354,'laptop');
INSERT INTO laptop(modelo,velocidad,ram,disco,pantalla,precio) VALUES (1354,2.6,8,1,1080,2246);



CREATE OR REPLACE FUNCTION closest_price (pricenum FLOAT)
	RETURNS TABLE (model INTEGER, speed DOUBLE PRECISION, ram DOUBLE PRECISION, hd DOUBLE PRECISION, price DOUBLE PRECISION) AS $$
	BEGIN
	IF pricenum < 0 THEN RAISE EXCEPTION 'No es un precio valido';
	ELSE
		RETURN QUERY SELECT * FROM pc ORDER BY abs(pc.precio-pricenum) LIMIT 1;
	END IF;
	END; $$
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION min_specs (vel FLOAT,ramval FLOAT, hdisc FLOAT)
	RETURNS TABLE (model INTEGER, speed DOUBLE PRECISION, ramres DOUBLE PRECISION, hd DOUBLE PRECISION, screen INTEGER, price DOUBLE PRECISION, maker TEXT) AS $$
	BEGIN
	IF vel <= 0 OR ramval <=0 OR hdisc <= 0 THEN RAISE EXCEPTION 'Valores menores o iguales a 0 no son validos';
	ELSE
		RETURN QUERY SELECT l.modelo, l.velocidad, l.ram, l.disco, l.pantalla, l.precio, p.fabricante FROM laptop l INNER JOIN producto p ON p.modelo=l.modelo WHERE l.velocidad>=vel AND l.ram>=ramval AND l.disco>=hdisc ;
	END IF;
	END; $$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION min_price(pricenum double precision)
RETURNS TABLE (cantidad BIGINT,tipo TEXT) AS $$
	BEGIN
	IF pricenum < 0 THEN RAISE EXCEPTION 'Valores menores a 0 no son validos';
	ELSE
		RETURN QUERY
		SELECT COUNT(producto.tipo),producto.tipo FROM laptop INNER JOIN producto ON producto.modelo = laptop.modelo WHERE laptop.precio>pricenum GROUP BY producto.tipo
		UNION ALL SELECT COUNT(producto.tipo), producto.tipo FROM pc INNER JOIN producto ON producto.modelo = pc.modelo WHERE pc.precio>pricenum GROUP BY producto.tipo
		UNION ALL SELECT COUNT(producto.tipo), producto.tipo FROM printer INNER JOIN producto ON producto.modelo = printer.modelo WHERE printer.precio>pricenum GROUP BY producto.tipo;
		END IF;
	END; $$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION pc_printer_combo(maxprice double precision, minspeed double precision)
RETURNS TABLE (pcmodel INTEGER, printermodel INTEGER, comboprice DOUBLE PRECISION) AS $$
	BEGIN
	IF maxprice<=0 THEN RAISE EXCEPTION 'Presupuestos menores o iguales a 0 no son validos';
	ELSEIF minspeed < 0 THEN RAISE EXCEPTION 'Velocidades menores a 0 no son validas';
	ELSE
		RETURN QUERY
		SELECT buscar.pcmod, buscar.printmod, buscar.suma FROM
		(SELECT (datos.lp+datos.pp) as suma, datos.lm as pcmod, datos.ls as pcvel, datos.pm as printmod FROM (SELECT pc.precio as lp, pc.modelo as lm, pc.velocidad as ls, printer.precio as pp, printer.modelo as pm FROM pc CROSS JOIN printer)datos)buscar
		WHERE buscar.suma<=maxprice AND pcvel>=minspeed;
		END IF;
	END; $$
LANGUAGE plpgsql;

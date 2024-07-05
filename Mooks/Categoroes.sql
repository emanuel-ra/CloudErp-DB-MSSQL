INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId, CreatedAt, UpdatedAt) VALUES
(0, 'Electrónica', 'http://example.com/logo_electronica.jpg', 1, 1, 1, 2001, GETDATE(), GETDATE()),
(1, 'Televisores', 'http://example.com/logo_televisores.jpg', 1, 1, 1, 2002, GETDATE(), GETDATE()),
(1, 'Computadoras', 'http://example.com/logo_computadoras.jpg', 1, 1, 1, 2003, GETDATE(), GETDATE()),
(1, 'Teléfonos Móviles', 'http://example.com/logo_telefonos_mobiles.jpg', 1, 1, 1, 2004, GETDATE(), GETDATE()),
(2, 'LED', 'http://example.com/logo_led.jpg', 1, 1, 1, 2005, GETDATE(), GETDATE()),
(2, 'OLED', 'http://example.com/logo_oled.jpg', 1, 1, 1, 2006, GETDATE(), GETDATE()),
(3, 'Portátiles', 'http://example.com/logo_portatiles.jpg', 1, 1, 1, 2007, GETDATE(), GETDATE()),
(3, 'Sobremesa', 'http://example.com/logo_sobremesa.jpg', 1, 1, 1, 2008, GETDATE(), GETDATE()),
(4, 'Android', 'http://example.com/logo_android.jpg', 1, 1, 1, 2009, GETDATE(), GETDATE()),
(4, 'iOS', 'http://example.com/logo_ios.jpg', 1, 1, 1, 2010, GETDATE(), GETDATE()),
(0, 'Accesorios Electrónicos', 'http://example.com/logo_accesorios.jpg', 1, 1, 1, 2011, GETDATE(), GETDATE()),
(11, 'Auriculares', 'http://example.com/logo_auriculares.jpg', 1, 1, 1, 2012, GETDATE(), GETDATE()),
(11, 'Cargadores', 'http://example.com/logo_cargadores.jpg', 1, 1, 1, 2013, GETDATE(), GETDATE()),
(11, 'Fundas', 'http://example.com/logo_fundas.jpg', 1, 1, 1, 2014, GETDATE(), GETDATE()),
(0, 'Electrodomésticos', 'http://example.com/logo_electrodomesticos.jpg', 1, 1, 1, 2015, GETDATE(), GETDATE()),
(15, 'Refrigeradores', 'http://example.com/logo_refrigeradores.jpg', 1, 1, 1, 2016, GETDATE(), GETDATE()),
(15, 'Lavadoras', 'http://example.com/logo_lavadoras.jpg', 1, 1, 1, 2017, GETDATE(), GETDATE()),
(15, 'Microondas', 'http://example.com/logo_microondas.jpg', 1, 1, 1, 2018, GETDATE(), GETDATE()),
(0, 'Videojuegos', 'http://example.com/logo_videojuegos.jpg', 1, 1, 1, 2019, GETDATE(), GETDATE()),
(19, 'Consolas', 'http://example.com/logo_consolas.jpg', 1, 1, 1, 2020, GETDATE(), GETDATE());



--- BOCINAS 
INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(0, 'Audio', '', 1, 1, 1, 0)

INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(1, 'Bocinas de Suelo', 'floor_standing_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas Centrales', 'center_channel_speakers_logo.png', 1, 1, 1, 0),
(1, 'Subwoofers', 'subwoofers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas Satélite', 'satellite_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas Inalámbricas', 'wireless_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas Portátiles', 'portable_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas de Estudio', 'studio_monitors_logo.png', 1, 1, 1, 0),
(1, 'Bocinas para Cine en Casa', 'home_theater_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas para Exteriores', 'outdoor_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas para Automóviles', 'car_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas para Computadora', 'computer_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas de Torre', 'tower_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas Multiroom', 'multiroom_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas Inteligentes', 'smart_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas de Pared', 'wall_mounted_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas Empotradas en el Techo', 'in_ceiling_speakers_logo.png', 1, 1, 1, 0),
(1, 'Bocinas Empotradas en la Pared', 'in_wall_speakers_logo.png', 1, 1, 1, 0);

INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(1, 'Audífonos In-Ear', 'in_ear_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos On-Ear', 'on_ear_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos Over-Ear', 'over_ear_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos Inalámbricos', 'wireless_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos Bluetooth', 'bluetooth_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos para Deportes', 'sports_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos con Cancelación de Ruido', 'noise_canceling_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos de Estudio', 'studio_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos para Juegos', 'gaming_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos de Alta Fidelidad', 'hi_fi_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos con Micrófono', 'headphones_with_microphone_logo.png', 1, 1, 1, 0),
(1, 'Audífonos True Wireless', 'true_wireless_earbuds_logo.png', 1, 1, 1, 0),
(1, 'Audífonos para Niños', 'kids_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos para Viajes', 'travel_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos Profesionales', 'professional_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos Abiertos', 'open_back_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos Cerrados', 'closed_back_headphones_logo.png', 1, 1, 1, 0),
(1, 'Audífonos de Conducción Ósea', 'bone_conduction_headphones_logo.png', 1, 1, 1, 0);


INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(0, 'Iluminación Interior', 'indoor_lighting_logo.png', 1, 1, 1, 0)

INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(37, 'Lámparas de Techo', 'ceiling_lights_logo.png', 1, 1, 1, 0),
(37, 'Lámparas Colgantes', 'pendant_lights_logo.png', 1, 1, 1, 0),
(37, 'Lámparas de Pared', 'wall_lights_logo.png', 1, 1, 1, 0),
(37, 'Lámparas de Mesa', 'table_lamps_logo.png', 1, 1, 1, 0),
(37, 'Lámparas de Pie', 'floor_lamps_logo.png', 1, 1, 1, 0),
(37, 'Lámparas Empotradas', 'recessed_lighting_logo.png', 1, 1, 1, 0),
(37, 'Lámparas de Riel', 'track_lighting_logo.png', 1, 1, 1, 0),
(37, 'Iluminación Bajo Gabinete', 'under_cabinet_lighting_logo.png', 1, 1, 1, 0)


INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(46, 'Lámparas de Jardín', 'garden_lights_logo.png', 1, 1, 1, 0),
(46, 'Lámparas de Camino', 'pathway_lights_logo.png', 1, 1, 1, 0),
(46, 'Lámparas de Fachada', 'facade_lights_logo.png', 1, 1, 1, 0),
(46, 'Lámparas de Seguridad', 'security_lights_logo.png', 1, 1, 1, 0),
(46, 'Lámparas de Poste', 'post_lights_logo.png', 1, 1, 1, 0),
(46, 'Lámparas de Inundación', 'flood_lights_logo.png', 1, 1, 1, 0)

INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(0, 'Iluminación Comercial', 'commercial_lighting_logo.png', 1, 1, 1, 0)

INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(53, 'Lámparas de Oficina', 'office_lights_logo.png', 1, 1, 1, 0),
(53, 'Lámparas de Tienda', 'store_lights_logo.png', 1, 1, 1, 0),
(53, 'Iluminación de Almacén', 'warehouse_lighting_logo.png', 1, 1, 1, 0),
(53, 'Lámparas Industriales', 'industrial_lights_logo.png', 1, 1, 1, 0)

INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(0, 'Iluminación Especializada', 'specialized_lighting_logo.png', 1, 1, 1, 0)

INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(58, 'Lámparas de Emergencia', 'emergency_lights_logo.png', 1, 1, 1, 0),
(58, 'Lámparas de Teatro', 'theater_lights_logo.png', 1, 1, 1, 0),
(58, 'Lámparas de Acuario', 'aquarium_lights_logo.png', 1, 1, 1, 0),
(58, 'Lámparas de Fotografía', 'photography_lights_logo.png', 1, 1, 1, 0)

INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(0, 'Iluminación Decorativa', 'decorative_lighting_logo.png', 1, 1, 1, 0)

INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(63, 'Candelabros', 'chandeliers_logo.png', 1, 1, 1, 0),
(63, 'Luces de Cuerda', 'string_lights_logo.png', 1, 1, 1, 0),
(63, 'Lámparas de Lava', 'lava_lamps_logo.png', 1, 1, 1, 0),
(63, 'Luces de Neon', 'neon_lights_logo.png', 1, 1, 1, 0);


INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(0, 'Computadoras', '', 1, 1, 1, 0)

INSERT INTO Categories (ParentId, Name, Logo, IsEnableEcommerce, StatusId, UserId, ExternalId)
VALUES 
(68, 'Monitories', 'chandeliers_logo.png', 1, 1, 1, 0),
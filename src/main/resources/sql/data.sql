insert into ecomonitoring.points(name, longitude, latitude) values
    ('VP Zaporozhye TPP PJSC "DNIPROENERGO"', 34.632650, 47.506530),
    ('PJSC "Zaporizhstal"', 35.1583175,47.8579054),
    ('PJSC "Zaporozhye Plant ferroalloys »', 35.1383557, 47.865608),
    ('PJSC "Zaporizhkoks"', 35.1374288 ,47.864865),
    ('PJSC "Ukrainian graphite" ', 35.1252825, 47.8723662),
    ('Dniprospetsstal PJSC', 35.1210251, 47.8547222),
    ('LLC "Zaporozhye Titanium - Magnesium Combine »', 35.1949244, 47.8906656),
    ('PJSC "Zaporizhneft"', 35.1698283, 47.8868217),
    ('PJSC "Zaporizhkloflyus"', 35.1382263, 47.865608),
    ('PJSC "Pologovsky oil extraction plant"', 36.2471589, 47.4605846),
    ('Motor Sich PJSC', 35.187304, 47.8227355),
    ('PJSC "Zaporozhye automobile plant »', 35.1610395, 47.8227299),
    ('PJSC "Zaporozhye iron ore plant »', 34.964201, 47.1724328);

insert into ecomonitoring.boundaryTolerance(name, massFlow, boundaryTolerance, class) values
    ('Суспендовані тверді частинки', 500, 50, 2),
    ('Сполуки азоту', 5000, 500, 4),
    ('Діоксид та інші сполуки сірки', 300, 30, 3),
    ('Оксид вуглецю', 5000, 250, 4);

insert into ecomonitoring.pollutingFacility(boundaryTolerance_id, volume, point_id) values
    (1, 5160, 1),
    (2, 30202, 1),
    (3, 67087, 1),
    (4, 1646, 1),
    (1, 3783.600, 2),
    (2, 33578.597, 2),
    (3, 4553.060, 2),
    (4, 47047.130, 2),
    (1, 354.874, 3),
    (2, 342.448, 3),
    (3, 1139.933, 3),
    (4, 11066.715, 3),
    (1, 234.97, 4),
    (2, 769.362, 4),
    (3, 218.974, 4),
    (4, 998.443, 4),
    (1, 213.092, 5),
    (2, 167.622, 5),
    (3, 248.305, 5),
    (4, 407.960, 5);


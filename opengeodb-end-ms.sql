
INSERT INTO geodb_type_names VALUES(-1,'de','[unbekannt]');
INSERT INTO geodb_type_names VALUES(0,'de','nicht vorhanden');
INSERT INTO geodb_type_names VALUES(1,'de','beliebig');
INSERT INTO geodb_type_names VALUES(100100000,'de','Erdteil');
INSERT INTO geodb_type_names VALUES(100200000,'de','Staat/Land');
INSERT INTO geodb_type_names VALUES(100300000,'de_CH','Kanton');
INSERT INTO geodb_type_names VALUES(100300000,'de_DE','Bundesland');
INSERT INTO geodb_type_names VALUES(100400000,'de','Regierungsbezirk');
INSERT INTO geodb_type_names VALUES(100500000,'de','Landkreis');
INSERT INTO geodb_type_names VALUES(100600000,'de','Politische Gliederung');
INSERT INTO geodb_type_names VALUES(100700000,'de','Ortschaft');
INSERT INTO geodb_type_names VALUES(100800000,'de','Postleitzahlgebiet');
INSERT INTO geodb_type_names VALUES(100900000,'de','Ortsteil');
INSERT INTO geodb_type_names VALUES(200100000,'de','WGS84 Koordinaten');
INSERT INTO geodb_type_names VALUES(200200000,'de','lat');
INSERT INTO geodb_type_names VALUES(200300000,'de','lon');
INSERT INTO geodb_type_names VALUES(300100000,'de','Auf einen Tag genaues Datum');
INSERT INTO geodb_type_names VALUES(300200000,'de','Auf ein Monat genaues Datum');
INSERT INTO geodb_type_names VALUES(300300000,'de','Auf ein Jahr genaues Datum');
INSERT INTO geodb_type_names VALUES(300400000,'de','Auf 10 Jahre genaues Datum');
INSERT INTO geodb_type_names VALUES(300500000,'de','Unbekanntes Datum in der Zukunft');
INSERT INTO geodb_type_names VALUES(400100000,'de','Teil von');
INSERT INTO geodb_type_names VALUES(400200000,'de','Ebene');
INSERT INTO geodb_type_names VALUES(400300000,'de','Typ');
INSERT INTO geodb_type_names VALUES(500100000,'de','Name');
INSERT INTO geodb_type_names VALUES(500100001,'de','ISO 3166 Alpha-2');
INSERT INTO geodb_type_names VALUES(500100002,'de','Sortiername');
INSERT INTO geodb_type_names VALUES(500100003,'de','ISO_3166_2');
INSERT INTO geodb_type_names VALUES(500100004,'de','Region eines Postleitzahlgebietes');
INSERT INTO geodb_type_names VALUES(500300000,'de','Postleitzahl');
INSERT INTO geodb_type_names VALUES(500400000,'de','Telefonvorwahl');
INSERT INTO geodb_type_names VALUES(500500000,'de','KFZ-Kennzeichen');
INSERT INTO geodb_type_names VALUES(500600000,'de','Amtlicher Gemeindeschlüssel');
INSERT INTO geodb_type_names VALUES(500700000,'de','Verwaltungszusammenschluss');
INSERT INTO geodb_type_names VALUES(500700001,'de','Sortiername eines Verwaltungszusammenschlusses');
INSERT INTO geodb_type_names VALUES(500800000,'de','Quelle');
INSERT INTO geodb_type_names VALUES(500900000,'de','Kommentar');
INSERT INTO geodb_type_names VALUES(600700000,'de','Einwohnerzahl');
INSERT INTO geodb_type_names VALUES(600800000,'de','Höhenangabe in Metern');
INSERT INTO geodb_type_names VALUES(610000000,'de','Fläche');
INSERT INTO geodb_type_names VALUES(650700001,'de','Ungefähre Einwohnerzahl');
INSERT INTO geodb_type_names VALUES(650700002,'de','Genaue Einwohnerzahl');
INSERT INTO geodb_type_names VALUES(650800001,'de','Maximale Höhe');
INSERT INTO geodb_type_names VALUES(650800002,'de','Minimale Höhe');
INSERT INTO geodb_type_names VALUES(650800003,'de','Durchschnittliche Höhe');
INSERT INTO geodb_type_names VALUES(650800004,'de','Höhe am Referenzpunkt mit der angegebenen loc_id');
INSERT INTO geodb_type_names VALUES(650800005,'de','Höhe an der angegebenen Koordinate');

create index tid_tnames_idx on geodb_type_names(type_id);
GO
create index locale_tnames_idx on geodb_type_names(type_locale);
GO
create index name_tnames_idx on geodb_type_names(name);
GO
create index loc_type_idx on geodb_locations(loc_type);
GO
create index coord_loc_id_idx on geodb_coordinates(loc_id);
GO
create index coord_lon_idx on geodb_coordinates(lon);
GO
create index coord_lat_idx on geodb_coordinates(lat);
GO
create index coord_type_idx on geodb_coordinates(coord_type);
GO
create index coord_stype_idx on geodb_coordinates(coord_subtype);
GO
create index coord_since_idx on geodb_coordinates(valid_since);
GO
create index coord_until_idx on geodb_coordinates(valid_until);
GO
create index hierarchy_loc_id_idx on geodb_hierarchies(loc_id);
GO
create index hierarchy_level_idx on geodb_hierarchies(level);
GO
create index hierarchy_lvl1_idx on geodb_hierarchies(id_lvl1);
GO
create index hierarchy_lvl2_idx on geodb_hierarchies(id_lvl2);
GO
create index hierarchy_lvl3_idx on geodb_hierarchies(id_lvl3);
GO
create index hierarchy_lvl4_idx on geodb_hierarchies(id_lvl4);
GO
create index hierarchy_lvl5_idx on geodb_hierarchies(id_lvl5);
GO
create index hierarchy_lvl6_idx on geodb_hierarchies(id_lvl6);
GO
create index hierarchy_lvl7_idx on geodb_hierarchies(id_lvl7);
GO
create index hierarchy_lvl8_idx on geodb_hierarchies(id_lvl8);
GO
create index hierarchy_lvl9_idx on geodb_hierarchies(id_lvl9);
GO
create index hierarchy_since_idx on geodb_hierarchies(valid_since);
GO
create index hierarchy_until_idx on geodb_hierarchies(valid_until);
GO
create index text_lid_idx on geodb_textdata(loc_id);
GO
create index text_val_idx on geodb_textdata(text_val);
GO
create index text_type_idx on geodb_textdata(text_type);
GO
create index text_locale_idx on geodb_textdata(text_locale);
GO
create index text_native_idx on geodb_textdata(is_native_lang);
GO
create index text_default_idx on geodb_textdata(is_default_name);
GO
create index text_since_idx on geodb_textdata(valid_since);
GO
create index text_until_idx on geodb_textdata(valid_until);
GO
create index int_lid_idx on geodb_intdata(loc_id);
GO
create index int_val_idx on geodb_intdata(int_val);
GO
create index int_type_idx on geodb_intdata(int_type);
GO
create index int_since_idx on geodb_intdata(valid_since);
GO
create index int_until_idx on geodb_intdata(valid_until);
GO
create index float_lid_idx on geodb_floatdata(loc_id);
GO
create index float_val_idx on geodb_floatdata(float_val);
GO
create index float_type_idx on geodb_floatdata(float_type);
GO
create index float_since_idx on geodb_floatdata(valid_since);
GO
create index float_until_idx on geodb_floatdata(valid_until);
GO

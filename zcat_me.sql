-- Создание таблицы mining_data
CREATE TABLE IF NOT EXISTS mining_data (
    id SERIAL PRIMARY KEY,
    year INTEGER NOT NULL,
    rock_type VARCHAR(50) NOT NULL,
    amount_tonnes NUMERIC(10, 2) NOT NULL,
    location VARCHAR(100),
    company VARCHAR(100)
);

-- Очистка таблицы перед вставкой
TRUNCATE TABLE mining_data;

-- Вставка данных за 45 лет (по 3-5 записей на каждый год)
INSERT INTO mining_data (year, rock_type, amount_tonnes, location, company) VALUES
-- 1980
(1980, 'Granite', 12500.50, 'Ural Mountains', 'MiningCo'),
(1980, 'Marble', 8540.25, 'Caucasus', 'RockExtract Ltd'),
(1980, 'Basalt', 22000.75, 'Siberia', 'GeoResources'),
(1980, 'Limestone', 15320.00, 'Far East', 'Stones Inc'),

-- 1981
(1981, 'Sandstone', 9800.30, 'Altai', 'Mountain Gems'),
(1981, 'Quartzite', 11200.00, 'Kola Peninsula', 'Earth Minerals'),
(1981, 'Slate', 8700.40, 'Karelia', 'GeoResources'),

-- 1982
(1982, 'Gneiss', 14300.25, 'Central Russia', 'MiningCo'),
(1982, 'Diorite', 7600.80, 'Ural Mountains', 'RockExtract Ltd'),
(1982, 'Gabbro', 19800.60, 'Siberia', 'Stones Inc'),

-- 1983
(1983, 'Granite', 16700.30, 'Caucasus', 'GeoResources'),
(1983, 'Marble', 10200.75, 'Far East', 'Mountain Gems'),
(1983, 'Basalt', 24500.00, 'Altai', 'Earth Minerals'),

-- 1984
(1984, 'Limestone', 13200.40, 'Kola Peninsula', 'MiningCo'),
(1984, 'Sandstone', 9200.25, 'Karelia', 'RockExtract Ltd'),
(1984, 'Quartzite', 15400.80, 'Central Russia', 'GeoResources'),

-- 1985
(1985, 'Slate', 7800.50, 'Ural Mountains', 'Stones Inc'),
(1985, 'Gneiss', 18700.30, 'Siberia', 'Mountain Gems'),
(1985, 'Diorite', 11300.75, 'Caucasus', 'Earth Minerals'),

-- 1986
(1986, 'Gabbro', 23100.00, 'Far East', 'MiningCo'),
(1986, 'Granite', 14200.40, 'Altai', 'RockExtract Ltd'),
(1986, 'Marble', 9800.25, 'Kola Peninsula', 'GeoResources'),

-- 1987
(1987, 'Basalt', 20300.80, 'Karelia', 'Stones Inc'),
(1987, 'Limestone', 12500.50, 'Central Russia', 'Mountain Gems'),
(1987, 'Sandstone', 8700.30, 'Ural Mountains', 'Earth Minerals'),

-- 1988
(1988, 'Quartzite', 17600.75, 'Siberia', 'MiningCo'),
(1988, 'Slate', 10200.00, 'Caucasus', 'RockExtract Ltd'),
(1988, 'Gneiss', 23400.40, 'Far East', 'GeoResources'),

-- 1989
(1989, 'Diorite', 14300.25, 'Altai', 'Stones Inc'),
(1989, 'Gabbro', 9200.80, 'Kola Peninsula', 'Mountain Gems'),
(1989, 'Granite', 19800.60, 'Karelia', 'Earth Minerals'),

-- 1990
(1990, 'Marble', 15400.30, 'Central Russia', 'MiningCo'),
(1990, 'Basalt', 11200.75, 'Ural Mountains', 'RockExtract Ltd'),
(1990, 'Limestone', 24500.00, 'Siberia', 'GeoResources'),

-- 1991
(1991, 'Sandstone', 13200.40, 'Caucasus', 'Stones Inc'),
(1991, 'Quartzite', 9200.25, 'Far East', 'Mountain Gems'),
(1991, 'Slate', 18700.80, 'Altai', 'Earth Minerals'),

-- 1992
(1992, 'Gneiss', 7800.50, 'Kola Peninsula', 'MiningCo'),
(1992, 'Diorite', 23100.30, 'Karelia', 'RockExtract Ltd'),
(1992, 'Gabbro', 14200.75, 'Central Russia', 'GeoResources'),

-- 1993
(1993, 'Granite', 20300.00, 'Ural Mountains', 'Stones Inc'),
(1993, 'Marble', 12500.40, 'Siberia', 'Mountain Gems'),
(1993, 'Basalt', 9800.25, 'Caucasus', 'Earth Minerals'),

-- 1994
(1994, 'Limestone', 17600.80, 'Far East', 'MiningCo'),
(1994, 'Sandstone', 10200.50, 'Altai', 'RockExtract Ltd'),
(1994, 'Quartzite', 23400.30, 'Kola Peninsula', 'GeoResources'),

-- 1995
(1995, 'Slate', 14300.75, 'Karelia', 'Stones Inc'),
(1995, 'Gneiss', 9200.00, 'Central Russia', 'Mountain Gems'),
(1995, 'Diorite', 19800.40, 'Ural Mountains', 'Earth Minerals'),

-- 1996
(1996, 'Gabbro', 15400.25, 'Siberia', 'MiningCo'),
(1996, 'Granite', 11200.80, 'Caucasus', 'RockExtract Ltd'),
(1996, 'Marble', 24500.60, 'Far East', 'GeoResources'),

-- 1997
(1997, 'Basalt', 13200.30, 'Altai', 'Stones Inc'),
(1997, 'Limestone', 9200.75, 'Kola Peninsula', 'Mountain Gems'),
(1997, 'Sandstone', 18700.00, 'Karelia', 'Earth Minerals'),

-- 1998
(1998, 'Quartzite', 7800.40, 'Central Russia', 'MiningCo'),
(1998, 'Slate', 23100.25, 'Ural Mountains', 'RockExtract Ltd'),
(1998, 'Gneiss', 14200.80, 'Siberia', 'GeoResources'),

-- 1999
(1999, 'Diorite', 20300.50, 'Caucasus', 'Stones Inc'),
(1999, 'Gabbro', 12500.30, 'Far East', 'Mountain Gems'),
(1999, 'Granite', 9800.75, 'Altai', 'Earth Minerals'),

-- 2000
(2000, 'Marble', 17600.00, 'Kola Peninsula', 'MiningCo'),
(2000, 'Basalt', 10200.40, 'Karelia', 'RockExtract Ltd'),
(2000, 'Limestone', 23400.25, 'Central Russia', 'GeoResources'),

-- 2001
(2001, 'Sandstone', 14300.80, 'Ural Mountains', 'Stones Inc'),
(2001, 'Quartzite', 9200.50, 'Siberia', 'Mountain Gems'),
(2001, 'Slate', 19800.30, 'Caucasus', 'Earth Minerals'),

-- 2002
(2002, 'Gneiss', 15400.75, 'Far East', 'MiningCo'),
(2002, 'Diorite', 11200.00, 'Altai', 'RockExtract Ltd'),
(2002, 'Gabbro', 24500.40, 'Kola Peninsula', 'GeoResources'),

-- 2003
(2003, 'Granite', 13200.25, 'Karelia', 'Stones Inc'),
(2003, 'Marble', 9200.80, 'Central Russia', 'Mountain Gems'),
(2003, 'Basalt', 18700.60, 'Ural Mountains', 'Earth Minerals'),

-- 2004
(2004, 'Limestone', 7800.30, 'Siberia', 'MiningCo'),
(2004, 'Sandstone', 23100.75, 'Caucasus', 'RockExtract Ltd'),
(2004, 'Quartzite', 14200.00, 'Far East', 'GeoResources'),

-- 2005
(2005, 'Slate', 20300.40, 'Altai', 'Stones Inc'),
(2005, 'Gneiss', 12500.25, 'Kola Peninsula', 'Mountain Gems'),
(2005, 'Diorite', 9800.80, 'Karelia', 'Earth Minerals'),

-- 2006
(2006, 'Gabbro', 17600.50, 'Central Russia', 'MiningCo'),
(2006, 'Granite', 10200.30, 'Ural Mountains', 'RockExtract Ltd'),
(2006, 'Marble', 23400.75, 'Siberia', 'GeoResources'),

-- 2007
(2007, 'Basalt', 14300.00, 'Caucasus', 'Stones Inc'),
(2007, 'Limestone', 9200.40, 'Far East', 'Mountain Gems'),
(2007, 'Sandstone', 19800.25, 'Altai', 'Earth Minerals'),

-- 2008
(2008, 'Quartzite', 15400.80, 'Kola Peninsula', 'MiningCo'),
(2008, 'Slate', 11200.50, 'Karelia', 'RockExtract Ltd'),
(2008, 'Gneiss', 24500.30, 'Central Russia', 'GeoResources'),

-- 2009
(2009, 'Diorite', 13200.75, 'Ural Mountains', 'Stones Inc'),
(2009, 'Gabbro', 9200.00, 'Siberia', 'Mountain Gems'),
(2009, 'Granite', 18700.40, 'Caucasus', 'Earth Minerals'),

-- 2010
(2010, 'Marble', 7800.25, 'Far East', 'MiningCo'),
(2010, 'Basalt', 23100.80, 'Altai', 'RockExtract Ltd'),
(2010, 'Limestone', 14200.60, 'Kola Peninsula', 'GeoResources'),

-- 2011
(2011, 'Sandstone', 20300.30, 'Karelia', 'Stones Inc'),
(2011, 'Quartzite', 12500.75, 'Central Russia', 'Mountain Gems'),
(2011, 'Slate', 9800.00, 'Ural Mountains', 'Earth Minerals'),

-- 2012
(2012, 'Gneiss', 17600.40, 'Siberia', 'MiningCo'),
(2012, 'Diorite', 10200.25, 'Caucasus', 'RockExtract Ltd'),
(2012, 'Gabbro', 23400.80, 'Far East', 'GeoResources'),

-- 2013
(2013, 'Granite', 14300.50, 'Altai', 'Stones Inc'),
(2013, 'Marble', 9200.30, 'Kola Peninsula', 'Mountain Gems'),
(2013, 'Basalt', 19800.75, 'Karelia', 'Earth Minerals'),

-- 2014
(2014, 'Limestone', 15400.00, 'Central Russia', 'MiningCo'),
(2014, 'Sandstone', 11200.40, 'Ural Mountains', 'RockExtract Ltd'),
(2014, 'Quartzite', 24500.25, 'Siberia', 'GeoResources'),

-- 2015
(2015, 'Slate', 13200.80, 'Caucasus', 'Stones Inc'),
(2015, 'Gneiss', 9200.50, 'Far East', 'Mountain Gems'),
(2015, 'Diorite', 18700.30, 'Altai', 'Earth Minerals'),

-- 2016
(2016, 'Gabbro', 7800.75, 'Kola Peninsula', 'MiningCo'),
(2016, 'Granite', 23100.00, 'Karelia', 'RockExtract Ltd'),
(2016, 'Marble', 14200.40, 'Central Russia', 'GeoResources'),

-- 2017
(2017, 'Basalt', 20300.25, 'Ural Mountains', 'Stones Inc'),
(2017, 'Limestone', 12500.80, 'Siberia', 'Mountain Gems'),
(2017, 'Sandstone', 9800.60, 'Caucasus', 'Earth Minerals'),

-- 2018
(2018, 'Quartzite', 17600.30, 'Far East', 'MiningCo'),
(2018, 'Slate', 10200.75, 'Altai', 'RockExtract Ltd'),
(2018, 'Gneiss', 23400.00, 'Kola Peninsula', 'GeoResources'),

-- 2019
(2019, 'Diorite', 14300.40, 'Karelia', 'Stones Inc'),
(2019, 'Gabbro', 9200.25, 'Central Russia', 'Mountain Gems'),
(2019, 'Granite', 19800.80, 'Ural Mountains', 'Earth Minerals'),

-- 2020
(2020, 'Marble', 15400.50, 'Siberia', 'MiningCo'),
(2020, 'Basalt', 11200.30, 'Caucasus', 'RockExtract Ltd'),
(2020, 'Limestone', 24500.75, 'Far East', 'GeoResources'),

-- 2021
(2021, 'Sandstone', 13200.00, 'Altai', 'Stones Inc'),
(2021, 'Quartzite', 9200.40, 'Kola Peninsula', 'Mountain Gems'),
(2021, 'Slate', 18700.25, 'Karelia', 'Earth Minerals'),

-- 2022
(2022, 'Gneiss', 7800.80, 'Central Russia', 'MiningCo'),
(2022, 'Diorite', 23100.60, 'Ural Mountains', 'RockExtract Ltd'),
(2022, 'Gabbro', 14200.30, 'Siberia', 'GeoResources'),

-- 2023
(2023, 'Granite', 20300.75, 'Caucasus', 'Stones Inc'),
(2023, 'Marble', 12500.00, 'Far East', 'Mountain Gems'),
(2023, 'Basalt', 9800.40, 'Altai', 'Earth Minerals'),

-- 2024
(2024, 'Limestone', 17600.25, 'Kola Peninsula', 'MiningCo'),
(2024, 'Sandstone', 10200.80, 'Karelia', 'RockExtract Ltd'),
(2024, 'Quartzite', 23400.50, 'Central Russia', 'GeoResources');

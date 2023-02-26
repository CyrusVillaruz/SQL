select bands.name as 'Band Name' from bands
left join albums on bands.id = albums.band_id
GROUP BY albums.band_id
HAVING COUNT(albums.id) = 0;

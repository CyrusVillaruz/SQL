select distinct bands.name as 'Band Name'
from bands join albums on bands.id = albums.band_id;
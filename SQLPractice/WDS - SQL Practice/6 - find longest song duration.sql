select albums.name as 'Name', albums.release_year as 'Release Year',
sum(songs.length) as 'Duration' from albums join songs
on albums.id = songs.album_id
group by songs.album_id
order by Duration desc
limit 1;
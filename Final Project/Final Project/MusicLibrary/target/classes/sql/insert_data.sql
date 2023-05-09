INSERT INTO artist (name) VALUES
    ('Subtronics'),
    ('GRiZ'),
    ('Drake'),
    ('Post Malone'),
    ('The Lumineers'),
    ('Mumford & Sons')
    ;

INSERT INTO genre (name) VALUES
    ('Electronic'),
    ('Hip Hop'),
    ('Folk Rock')
    ;

INSERT INTO album (title, artist_id) 
VALUES 
('Fractals', (SELECT id FROM artist WHERE name = 'Subtronics'  )), 
('Rainbow Brain', (SELECT id FROM artist WHERE name = 'GRiZ'  )), 
('Scorpion', (SELECT id FROM artist WHERE name = 'Drake'  )), 
('Stoney (Deluxe)', (SELECT id FROM artist WHERE name = 'Post Malone'  )), 
('The Lumineers', (SELECT id FROM artist WHERE name = 'The Lumineers'  )), 
('Babel (Deluxe Version)', (SELECT id FROM artist WHERE name = 'Mumford & Sons'  ))
;

INSERT INTO song (title, artist_id, album_id)
VALUES
('O.P.U.S.', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Spacetime (Feat. NEVVE)', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Cabin Fever', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Open Your Mind (Anthology 999)', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Gassed Up (Feat. Flowdan)', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Flute Dub', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Gummy Worm (Feat. BoogieT)', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Cyclops Rocks', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Take Flight VIP', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Morning Coffee (Feat. Sony)', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Into Pieces (Feat. Grabbitz)', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('FUNcKED', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Griztronics II (Another Level)', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Tuba Demon', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('Hieroglyph', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals')), 
('MetaFractal', (SELECT id FROM artist WHERE name = 'Subtronics'), (SELECT id FROM album WHERE title = 'Fractals'))
;

INSERT INTO song_genre (song_id, genre_id)
SELECT s.id, g.id 
FROM song s
JOIN genre g ON g.name = 'Electronic'
WHERE s.artist_id = (SELECT id FROM artist WHERE name = 'Subtronics');

INSERT INTO album_genre (album_id, genre_id)
SELECT album.id, genre.id
FROM album
JOIN genre ON genre.name = 'Electronic'
WHERE album.artist_id = (SELECT id FROM artist WHERE name = 'Subtronics');

INSERT INTO song (title, artist_id, album_id)
VALUES
    ('c h r o m e s t h e s i a', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Astro Funk', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Vibe Check', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('t a k e - e m - b a c k',  (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Burn Up The Floor', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('g o t - i t - l i k e', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Tie-Dye Sky', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('R O Y G B i V - i n t e r l u d e', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Rainbow Brain', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('2 4', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Harmony', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Gold', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Daily Routine', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Other Side of Jupiter', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('w u - w e i', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Infinite', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('y o u - a r e . i - c a n', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Feel It All', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('4 2', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('548 MAC Ave', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('p . s .', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('Another World', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain')),
    ('The Echo Tree', (SELECT id FROM artist WHERE name = 'GRiZ'), (SELECT id FROM album WHERE title = 'Rainbow Brain'))
;

INSERT INTO song_genre (song_id, genre_id)
SELECT s.id, g.id 
FROM song s
JOIN genre g ON g.name = 'Electronic'
WHERE s.artist_id = (SELECT id FROM artist WHERE name = 'GRiZ');

INSERT INTO album_genre (album_id, genre_id)
SELECT album.id, genre.id
FROM album
JOIN genre ON genre.name = 'Electronic'
WHERE album.artist_id = (SELECT id FROM artist WHERE name = 'GRiZ');

INSERT INTO song (title, artist_id, album_id)
VALUES
    ('Survival', (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Nonstop',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Elevate',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Emotionless',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Gods Plan',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Im Upset',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('8 Out Of 10',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Mob Ties',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Cant Take A Joke',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Sandras Rose',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Talk Up (Feat. Jay-Z)',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Is There More',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Peak',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Summer Games',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Jaded',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Nice For What',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Finese',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Ratchet Happy Birthday',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Thats How You Feel',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Blue Tint',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('In My Feelings',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Dont Matter To Me (with Michael Jackson)',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('After Dark (Feat. Static Major & Ty Dolla $ign)',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('Final Fantasy',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion')),
    ('March 14',  (SELECT id FROM artist WHERE name = 'Drake'), (SELECT id FROM album WHERE title = 'Scorpion'))
;

INSERT INTO song_genre (song_id, genre_id)
SELECT s.id, g.id 
FROM song s
JOIN genre g ON g.name = 'Hip Hop'
WHERE s.artist_id = (SELECT id FROM artist WHERE name = 'Drake');

INSERT INTO album_genre (album_id, genre_id)
SELECT album.id, genre.id
FROM album
JOIN genre ON genre.name = 'Hip Hop'
WHERE album.artist_id = (SELECT id FROM artist WHERE name = 'Drake');

INSERT INTO song (title, artist_id, album_id)
VALUES
    ('Broken Whiskey Glass', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Big Lie', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Deja Vu', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('No Option', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Cold', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('White Iverson', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('I Fall Apart', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Patient', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Go Flex', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Feel', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Too Young', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Congratulations', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Up There', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Yours Truly, Austin Post', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Leave', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Hit This Hard', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Money Made Me Do It', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)')),
    ('Feeling Whitney', (SELECT id FROM artist WHERE name = 'Post Malone'), (SELECT id FROM album WHERE title = 'Stoney (Deluxe)'))
;

INSERT INTO song_genre (song_id, genre_id)
SELECT s.id, g.id 
FROM song s
JOIN genre g ON g.name = 'Hip Hop'
WHERE s.artist_id = (SELECT id FROM artist WHERE name = 'Post Malone');

INSERT INTO album_genre (album_id, genre_id)
SELECT album.id, genre.id
FROM album
JOIN genre ON genre.name = 'Hip Hop'
WHERE album.artist_id = (SELECT id FROM artist WHERE name = 'Post Malone');

INSERT INTO song (title, artist_id, album_id)
VALUES
    ('Flowers in Your Hair', (SELECT id FROM artist WHERE name = 'The Lumineers'), (SELECT id FROM album WHERE title = 'The Lumineers')),
    ('Classy Girls', (SELECT id FROM artist WHERE name = 'The Lumineers'), (SELECT id FROM album WHERE title = 'The Lumineers')),
    ('Submarines', (SELECT id FROM artist WHERE name = 'The Lumineers'), (SELECT id FROM album WHERE title = 'The Lumineers')),
    ('Dead Sea', (SELECT id FROM artist WHERE name = 'The Lumineers'), (SELECT id FROM album WHERE title = 'The Lumineers')),
    ('Ho Hey', (SELECT id FROM artist WHERE name = 'The Lumineers'), (SELECT id FROM album WHERE title = 'The Lumineers')),
    ('Slow It Down', (SELECT id FROM artist WHERE name = 'The Lumineers'), (SELECT id FROM album WHERE title = 'The Lumineers')),
    ('Stubborn Love', (SELECT id FROM artist WHERE name = 'The Lumineers'), (SELECT id FROM album WHERE title = 'The Lumineers')),
    ('Big Parade', (SELECT id FROM artist WHERE name = 'The Lumineers'), (SELECT id FROM album WHERE title = 'The Lumineers')),
    ('Charlie Boy', (SELECT id FROM artist WHERE name = 'The Lumineers'), (SELECT id FROM album WHERE title = 'The Lumineers')),
    ('Flapper Girl', (SELECT id FROM artist WHERE name = 'The Lumineers'), (SELECT id FROM album WHERE title = 'The Lumineers')),
    ('Morning Song', (SELECT id FROM artist WHERE name = 'The Lumineers'), (SELECT id FROM album WHERE title = 'The Lumineers'))
;

INSERT INTO song_genre (song_id, genre_id)
SELECT s.id, g.id 
FROM song s
JOIN genre g ON g.name = 'Folk Rock'
WHERE s.artist_id = (SELECT id FROM artist WHERE name = 'The Lumineers');

INSERT INTO album_genre (album_id, genre_id)
SELECT album.id, genre.id
FROM album
JOIN genre ON genre.name = 'Folk Rock'
WHERE album.artist_id = (SELECT id FROM artist WHERE name = 'The Lumineers');

INSERT INTO song (title, artist_id, album_id)
VALUES
    ('Babel', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('Whispers in the Dark', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('I Will Wait', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('Holland Road', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('Ghosts That We Knew', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('Lover of the Light', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('Lovers Eyes', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('Reminder', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('Hopeless Wanderer', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('Broken Crown', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('Below My Feet', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('Not with Haste', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('For Those Below', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('The Boxer', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)')),
    ('Where Are You Now', (SELECT id FROM artist WHERE name = 'Mumford & Sons'), (SELECT id FROM album WHERE title = 'Babel (Deluxe Version)'))
;

INSERT INTO song_genre (song_id, genre_id)
SELECT s.id, g.id 
FROM song s
JOIN genre g ON g.name = 'Folk Rock'
WHERE s.artist_id = (SELECT id FROM artist WHERE name = 'Mumford & Sons');

INSERT INTO album_genre (album_id, genre_id)
SELECT album.id, genre.id
FROM album
JOIN genre ON genre.name = 'Folk Rock'
WHERE album.artist_id = (SELECT id FROM artist WHERE name = 'Folk Rock');

INSERT INTO user (username, password, email, first_name, last_name, created_at, updated_at) VALUES ('user', 'user', 'user@user.com', 'Test', 'User', NOW(), NOW());
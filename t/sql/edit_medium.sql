
SET client_min_messages TO 'warning';

INSERT INTO artist (id, gid, name, sort_name, comment)
    VALUES (1, '82a72730-792f-11de-8a39-0800200c9a66', 'Artist', 'Artist', 'Artist 1'),
           (2, '92a72730-792f-11de-8a39-0800200c9a66', 'Artist', 'Artist', 'Artist 2');

INSERT INTO artist_credit (id, name, artist_count) VALUES (1, 'Artist', 1);
INSERT INTO artist_credit_name (artist_credit, position, name, artist) VALUES (1, 1, 'Artist', 1);

INSERT INTO release_group (id, gid, name, artist_credit)
    VALUES (1, 'a037f860-792f-11de-8a39-0800200c9a66', 'RG', 1);

INSERT INTO release (id, gid, name, artist_credit, release_group)
    VALUES (1, '6a7d1660-792f-11de-8a39-0800200c9a66', 'Release', 1, 1);

INSERT INTO medium (id, track_count, release, position, name)
    VALUES (1, 0, 1, 1, 'Medium Name');

INSERT INTO medium_format (id, name) VALUES (1, 'CD');

INSERT INTO recording (id, gid, name, artist_credit)
    VALUES (1, 'a037f860-792f-11de-8a39-0800200c9a66', 'Track', 1);

ALTER SEQUENCE artist_id_seq RESTART 100;
ALTER SEQUENCE artist_credit_id_seq RESTART 100;

ALTER SEQUENCE track_id_seq RESTART 100;
ALTER SEQUENCE recording_id_seq RESTART 100;


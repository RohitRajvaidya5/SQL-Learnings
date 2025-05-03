-- Step 1: Add new columns with correct types
ALTER TABLE anime ADD (name_new VARCHAR2(255));
ALTER TABLE anime ADD (genre_new VARCHAR2(255));
ALTER TABLE anime ADD (type_new VARCHAR2(100));
ALTER TABLE anime ADD (episodes_new NUMBER);
ALTER TABLE anime ADD (rating_new NUMBER(3,2));
ALTER TABLE anime ADD (members_new NUMBER);

-- Step 2: Copy and convert data safely
UPDATE anime SET
  name_new = DBMS_LOB.SUBSTR(NAME, 255),
  genre_new = DBMS_LOB.SUBSTR(GENRE, 255),
  type_new = DBMS_LOB.SUBSTR(TYPE, 100),
  episodes_new = TO_NUMBER(REGEXP_SUBSTR(EPISODES, '^\d+')),
  rating_new = TO_NUMBER(REGEXP_SUBSTR(RATING, '^\d+(\.\d+)?')),
  members_new = TO_NUMBER(REGEXP_SUBSTR(MEMBERS, '^\d+'));

-- Step 3: Drop old CLOB columns
ALTER TABLE anime DROP COLUMN NAME;
ALTER TABLE anime DROP COLUMN GENRE;
ALTER TABLE anime DROP COLUMN TYPE;
ALTER TABLE anime DROP COLUMN EPISODES;
ALTER TABLE anime DROP COLUMN RATING;
ALTER TABLE anime DROP COLUMN MEMBERS;

-- Step 4: Rename new columns
ALTER TABLE anime RENAME COLUMN name_new TO NAME;
ALTER TABLE anime RENAME COLUMN genre_new TO GENRE;
ALTER TABLE anime RENAME COLUMN type_new TO TYPE;
ALTER TABLE anime RENAME COLUMN episodes_new TO EPISODES;
ALTER TABLE anime RENAME COLUMN rating_new TO RATING;
ALTER TABLE anime RENAME COLUMN members_new TO MEMBERS;

COMMIT;
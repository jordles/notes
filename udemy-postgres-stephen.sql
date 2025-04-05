-- model things that we only expect to query

-- implement a like system, posts and comments can be liked by users

CREATE TABLE "users" (
  "id" SERIAL,
  "created_at" TIMESTAMP,
  "updated_date" TIMESTAMP,
  "username" VARCHAR(30)
);

CREATE TABLE "posts" (
  "id" SERIAL,
  "created_at" TIMESTAMP,
  "updated_date" TIMESTAMP,
  "url" VARCHAR(200)
);

CREATE TABLE "comments" (
  "id" SERIAL,
  "created_at" TIMESTAMP,
  "updated_date" TIMESTAMP,
  "contents" VARCHAR(240),
  "user_id" INTEGER,
  "post_id" INTEGER
);

ALTER TABLE "comments" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

CREATE TABLE "likes" (
  "id" SERIAL,
  "created_at" TIMESTAMP,
  "updated_date" TIMESTAMP,
  "user_id" INTEGER,
  "post_id" INTEGER,
  "comment_id" INTEGER
);

ALTER TABLE "likes" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE "likes" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");
ALTER TABLE "likes" ADD FOREIGN KEY ("comment_id") REFERENCES "comments" ("id");


/* ------------------------- BUILD A MENTION SYSTEM ------------------------- */

-- contains longitudes and latitudes of users for locations of a post to be tags
-- contains captions of posts 
-- you can tag through photos and captions on posts, tag in text vs photos



-- updated posts tables to include captions and location for tagging position on images 
CREATE TABLE "posts" (
  "id" SERIAL,
  "created_at" TIMESTAMP,
  "updated_date" TIMESTAMP,
  "url" VARCHAR(200)
  "user_id" INTEGER,
  "caption" VARCHAR(240),
  "latitude" REAL,
  "longitude" REAL
);

ALTER TABLE "posts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

-- we are using Concrete Table Inheritance for tags regarding photos and captions 
CREATE TABLE photo_tags (
  "id" SERIAL PRIMARY KEY,
  "created_at" TIMESTAMP,
  "updated_date" TIMESTAMP,
  "user_id" INTEGER,
  "post_id" INTEGER,
  "x" INTEGER,
  "y" INTEGER,
)

ALTER TABLE photo_tags ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE photo_tags ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

-- we dont need to store the x and y coordinates for caption tags
CREATE TABLE caption_tags (
  "id" SERIAL PRIMARY KEY,
  "created_at" TIMESTAMP,
  "user_id" INTEGER,
  "post_id" INTEGER
)

ALTER TABLE caption_tags ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE caption_tags ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

/* ------------------------- MAKING A HASHTAG SYSTEM ------------------------ */

-- You can get away with using polymorphic associations for hashtags, since they will most likely function similarly across multiple mediums: posts, comments, etc.


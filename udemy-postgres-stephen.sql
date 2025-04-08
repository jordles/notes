-- model things that we only expect to query

-- implement a like system, posts and comments can be liked by users

CREATE TABLE "users" (
  "id" SERIAL,
  "created_at" TIMESTAMP,
  "updated_date" TIMESTAMP,
  "username" VARCHAR(30)
  "bio" VARCHAR(400),
  "profile_picture" VARCHAR(200),
  "phone_number" VARCHAR(25), --treated as string because we dont expect to do math on it
  "email" VARCHAR(40),
  "password" VARCHAR(50),
  "status" VARCHAR(15)
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

-- Since instagram only uses posts in their search feature for hashtags, thats a table we can focus on. We will use a join table to create a many to many relationship between posts and hashtags.

CREATE TABLE hashtags (
  "id" SERIAL PRIMARY KEY,
  "created_at" TIMESTAMP,
  "tag" VARCHAR(30)
)

CREATE TABLE hashtags_posts (
  "id" SERIAL PRIMARY KEY,
  "hashtag_id" INTEGER,
  "post_id" INTEGER
)
ALTER TABLE hashtags_posts ADD FOREIGN KEY ("hashtag_id") REFERENCES "hashtags" ("id");
ALTER TABLE hashtags_posts ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

/* ------------------------ MAKING A FOLLOWER SYSTEM ------------------------ */

CREATE TABLE followers (
  "id" SERIAL PRIMARY KEY,
  "created_at" TIMESTAMP,
  "user_id" INTEGER,
  "follower_id" INTEGER,
  UNIQUE ("user_id", "follower_id"),
  -- this is a composite key, we want to make sure that a user cannot follow the same person twice
  CHECK ("user_id" != "follower_id")
  -- this is a check constraint, we want to make sure that a user cannot follow themselves
)

ALTER TABLE followers ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE followers ADD FOREIGN KEY ("follower_id") REFERENCES "users" ("id");

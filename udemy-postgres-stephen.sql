-- model things that we only expect to query

-- implement a like system, posts and comments can be liked by users

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	username VARCHAR(30) NOT NULL,
	bio VARCHAR(400),
	avatar VARCHAR(200),
	phone VARCHAR(25), --this application signs up with either a phone number or an email so we dont need a not null constraint
	email VARCHAR(40),
	password VARCHAR(50), --NOT NULL,
	status VARCHAR(15),
  CHECK (COALESCE(phone, email) IS NOT NULL),
  -- this is a check constraint, we want to make sure that a user has either a phone number or an email
);

CREATE TABLE posts (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	url VARCHAR(200) NOT NULL,
	caption VARCHAR(240),
	lat REAL CHECK(lat IS NULL OR (lat >= -90 AND lat <= 90)), 
	lng REAL CHECK(lng IS NULL OR (lng >= -180 AND lng <= 180)),
	CHECK ((lat IS NULL) = (lng IS NULL)),
	user_id INTEGER NOT NULL REFERENCES users(id)ON DELETE CASCADE
);

CREATE TABLE comments (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	contents VARCHAR(240) NOT NULL,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE
);

CREATE TABLE likes (
	id SERIAL PRIMARY KEY, 
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER REFERENCES posts(id) ON DELETE CASCADE,
	comment_id INTEGER REFERENCES comments(id) ON DELETE CASCADE,
	CHECK((post_id IS NULL) != (comment_id IS NULL)),
	UNIQUE(user_id, post_id, comment_id)
);


/* ------------------------- BUILD A MENTION SYSTEM ------------------------- */

-- contains longitudes and latitudes of users for locations of a post to be tags
-- contains captions of posts 
-- you can tag through photos and captions on posts, tag in text vs photos



-- updated posts tables to include captions and location for tagging position on images 

-- we are using Concrete Table Inheritance for tags regarding photos and captions 
CREATE TABLE photo_tags (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  -- we can drag the photo tag around the photo, so this update applies. 
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
	x INTEGER NOT NULL,
	y INTEGER NOT NULL,
	UNIQUE (user_id, post_id) -- user can only be tagged once per post.
);

-- we dont need to store the x and y coordinates for caption tags
CREATE TABLE caption_tags (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
	UNIQUE (user_id, post_id) -- you can technically mention a user in a caption multiple times, but we will record it only once because the user will only be notified once.
);

/* ------------------------- MAKING A HASHTAG SYSTEM ------------------------ */

-- Since instagram only uses posts in their search feature for hashtags, thats a table we can focus on. We will use a join table to create a many to many relationship between posts and hashtags.

CREATE TABLE hashtags (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	title VARCHAR(20) NOT NULL UNIQUE	
)

CREATE TABLE hashtags_posts (
	id SERIAL PRIMARY KEY,
	hashtag_id INTEGER NOT NULL REFERENCES hashtags(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
	UNIQUE(hashtag_id, post_id) -- we dont need a record of a hashtag repeat for a post, we just need to know that the hashtag exists for the post.
)

/* ------------------------ MAKING A FOLLOWER SYSTEM ------------------------ */

CREATE TABLE followers (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	leader_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	follower_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	UNIQUE(user_id, follower_id) -- were making sure a user can only follow a user once
)

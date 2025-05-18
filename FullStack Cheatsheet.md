### FullStack

## Frontend

## Backend (Creating our own API)
* [Node.js](#node-js)
* [Express.js](#express-js)

* [PostgreSQL](<Postgres.md>)
---
## Node JS
[PerScholas Node](https://www.canva.com/design/DAFrioYleHo/n00cM_6gH8OdQXpaAxUrrA/edit)  

*Allows us to use javascript code on the server side*  

*NPM (Node Package Manager) allows us to install and manage dependencies and packages, listed under package.json and located in the node_modules folder*

**Remember to:**

* `.gitignore` -> node_modules .env  
* `"type": "module"` in package.json to use es modules when importing
* `"dev": "nodemon"` in package.json to run nodemon for index.js (assuming your main attribute(entry point) on package.json is "index.js")
# Installation
[Node Download](https://nodejs.dev/en/download/) or the command `winget install OpenJS.NodeJS` on powershell admin

check your node version with `node -v` and npm version with `npm -v`

# setup
* `npm init -y` - initialize a node project with default settings (this creates a package.json file)

* `npm i -D nodemon` - nodemon is a tool that helps develop Node applications by automatically restarting the application when file changes are detected. This speeds up development efficiency considerably. Dependencies are not included in the production build / application. `npm run dev` for the script to run nodemon.

* `import http from 'http'` - import http module, allows us to create a server
* `server.listen()` - starts the server by telling it what port to listen on

```js
import http from 'http';
const hostname = '127.0.0.1';
const port = 3000;
const server = http.createServer((req, res) => {
  res.end('hello world');
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/html");
  switch (req.url) {
    case "/":
      res.write("Hello World");
      break;
    case "/test":
      res.write("You've reached the test endpoint.");
      break;
    default:
      res.statusCode = 404;
      res.write("Error: 404 Not Found");
      break;
  }

  res.end();
}).listen(3000, () => {
  console.log(`Server running.`);
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
})
```
---
## Express JS

A framework for Node.js

Middlewares are functions that happen between a request and a response.

Express Routers allow us to create multiple types of request routes at the same endpoint.  
We mount the router at the specified route path, importing the router we created.  
The __mount path__ is the path at which the router is mounted.  
The __sub routes__ are the paths at which the router handles requests (doesnt contain the mount path).  
The __route/endpoint__ is a combination of the mount path and the sub route.  

?type for human-readable development and testing  
?typeId for faster, stable, database-safe filtering

| Thing | Naming Convention | Example |
| --- | --- | --- |
| Route paths | kebab-case | /pet-breeds, /pet-species |
| Route parameters | camelCase | /pets/:petId, /users/:userId |
| Database columns | snake_case | pet_id, activity_type_id |
| JS variables | camelCase | petId, activityType |
# Installation

# Setup
* `npm init -y` - initialize a node project with default settings
* `npm i express` - installs express
* `npm i dotenv` - installs dotenv
* `npm i -D nodemon` - nodemon can be used to auto restart the server

---

* `import 'dotenv/config'` - imports dotenv

* `import express from 'express'` - imports express

* `import router from './routes/routername'` - imports router

* `const app = express()` - creates an express app

* `app.use(express.json())` - parse json data from the request body

* `app.use(express.urlencoded({ extended: true }))` - parse url-encoded/form data from the request body

* `app.listen()` - starts the server by telling it what port to listen on, it replaces the http module's createServer() method and simplifies the process by not having to create a server object beforehand.

* `app.use(routePath, importedRouter)` - mounts the router at the specified route path.
<hr>

* `import {Router} from 'express'` - imports router from express. This router object is used to create modular, mountable route handlers. Each instance of router is a complete middleware and routing system, just like the express app

* `const router = Router()` - creates a router object


```js
import express from "express";
import "dotenv/config";
import morgan from "morgan";
import cors from "cors";
import path from 'path';
import { fileURLToPath } from 'url';
import usersRouter from "./routes/users.js";
import loginsRouter from "./routes/logins.js";
import postsRouter from "./routes/posts.js";
import messagesRouter from "./routes/messages.js";
import cloudinaryRoutes from "./routes/cloudinary.js";
import connect from "./db/connect.js";

connect(); // Connect to MongoDB

const app = express();
const PORT = process.env.PORT || 3000;


// Middlewares
app.use(morgan('dev'));
app.use(cors(corsOptions));
app.use(express.json({limit: '10mb'}));
app.use(express.urlencoded({ extended: true, limit: '10mb' }));

// Serve static files from the uploads directory
app.use('/uploads', express.static(path.join(path.dirname(fileURLToPath(import.meta.url)), 'uploads')));

// Routers
app.use("/api/users", usersRouter);
app.use("/api/logins", loginsRouter);
app.use("/api/posts", postsRouter);
app.use("/api/messages", messagesRouter);
app.use("/api/cloudinary", cloudinaryRoutes);

app.get("/", (req, res) => {
  res.send("Welcome to the Root API.");
})

// Default error handler
app.use((err, req, res, next) => {
  console.error(err.stack);
  
  // Send proper error response
  res.status(err.status || 500).json({
    error: process.env.NODE_ENV === 'production' 
      ? 'Something went wrong!' 
      : err.message
  });
});

// Listen for PORT
app.listen(PORT, () => {  
  console.log(`Server running on port http://localhost:${PORT}`);
})
```

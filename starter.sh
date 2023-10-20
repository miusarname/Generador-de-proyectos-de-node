echo "   B  I  E  N  V  E  N  I  D  O  S"
echo "   P  R  E  S  I  O  N  A  R    E  N  T  E  R    P  A  R  A    I  N  I  C  I  A  R    L  A    I  N  S  T  A  L  A  C  I  O  N"
echo " "
read -p ""
npm init -y && npm i -D nodemon morgan dotenv && npm i cors express express-rate-limit express-routes-versioning express-session express-validator jose jsonwebtoken passport passport-http-bearer 
echo "import express from "express";
import session from "express-session";
import dotenv from "dotenv";
import morgan from "morgan";
import cors from "cors";

// Environment variables
dotenv.config();

// Initialize server
const index = express();

// Setting
index.set("port", process.env.PORT || 3000);

// Middlewares
index.use(morgan("dev"));
index.use(cors());
index.use(express.json());

// Routes 
// Here goes the routes you want to define, or at least that's what I recommend.

// Server
index.listen(index.get("port"), () => {
  console.log("Server on port " + index.get("port"));
});
" > index.js





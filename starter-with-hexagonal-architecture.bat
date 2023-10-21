@echo off

echo "   B  I  E  N  V  E  N  I  D  O  S"
echo "   P  R  E  S  I  O  N  A  R    E  N  T  E  R    P  A  R  A    I  N  I  C  I  A  R    L  A    I  N  S  T  A  L  A  C  I  O  N   "
echo " "
read "-p" ""
npm "init" "-y" && npm "i" "-D" "nodemon" "morgan" "dotenv" && npm "i" "cors" "express" "express-rate-limit" "express-routes-versioning" "express-session" "express-validator" "jose" "jsonwebtoken" "passport" "passport-http-bearer"
clear
echo "import express from 'express';
import session from 'express-session';
import dotenv from 'dotenv';
import morgan from 'morgan';
import cors from 'cors';

// Environment variables
dotenv.config();

// Initialize server
const index = express();

// Setting
index.set('port', process.env.PORT || 3000);

// Middlewares
index.use(morgan('dev'));
index.use(cors());
index.use(express.json());

// Routes 
// Here goes the routes you want to define, or at least that's what I recommend.

// Server
index.listen(index.get(port), () => {
  console.log('Server on port ' + index.get('port'));
});
" REM UNKNOWN: {"type":"Redirect","op":{"text":">","type":"great"},"file":{"text":"index.js","type":"Word"}}
mkdir "app" && mkdir "controller" && mkdir "helpers"
cd "app" && mkdir "default" && cd "default" && mkdir "aplicacion" && mkdir "dominio" && mkdir "infraestructura" && cd "infraestructura" && echo "// Aca va tu codigo de logica, es decir algo como esto: 

export const GetSpecialityDoc = async (speciality) =>
  await usuario.find({ speciality }).project({ consultingRoom: 0 }).toArray();


//Osea las consultas a la base de datos, y la logica en general de lo que hara tu apliacion(Backend)

" REM UNKNOWN: {"type":"Redirect","op":{"text":">","type":"great"},"file":{"text":"default.js","type":"Word"}} && cd ".." && cd "dominio" && echo "// Aca va el codigo de los DTOs es decir el codigo que 'prepara' tu codigo para ser tocado por los controladores, por ejemplo esto:

import { body } from express-validator;

export const medicoDTO = [
  body('nombreCompleto')
    .notEmpty()
    .withMessage('El nombreCompleto es obligatorio')
    .isString()
    .withMessage('EL nombreCompleto debe ser de tipo string'),
  body('consultorio')
    .notEmpty()
    .withMessage('El consultorio es obligatorio')
    .isObject()
    .withMessage(
      'EL consultorio debe ser de tipo Object y contener code y name'
    ),
  body('especialidad')
    .notEmpty()
    .withMessage('La especialidad es obligatorio')
    .isString()
    .withMessage('La especialidad debe ser de tipo string'),
];
" REM UNKNOWN: {"type":"Redirect","op":{"text":">","type":"great"},"file":{"text":"default.models.js","type":"Word"}} && cd ".." && cd "aplicacion" && echo "// Aca va el codigo de los controladores, es decir las funciones que recibiran el 'request'(req) y el 'response(res),y aca tambien importaremos la logica de la infraestructura, por ejemplo:

export function GetDoctorbySpeciality(req, res) {
  if (!req.params.value)
    return res
      .status(404)
      .json({ status: 404, message: 'Especialidad not found' });
  try {
    const speciality = req.query.speciality.toLowerCase();
    let responseToUser = GetSpecialityDoc(speciality);
    res.status(200).json({ status: 200, result: responseToUser });
    return responseToUser;
  } catch (error) {
    res.status(404).json({ status: 404, message: 'speciality not found' });
    return { status: 404, result: 'not found or Error', Error: error };
  }
}
" REM UNKNOWN: {"type":"Redirect","op":{"text":">","type":"great"},"file":{"text":"default.controller.js","type":"Word"}} && echo "// Aca van las rutas, por ejemplo :

import { Router } from 'express';
import { GetDoctorbySpeciality } from './doctor.controller.js';

export const doctors = Router();

doctors.get('/',GetDoctorbySpeciality)
" REM UNKNOWN: {"type":"Redirect","op":{"text":">","type":"great"},"file":{"text":"default.routes.js","type":"Word"}} && cd "../../"
clear
echo " Hemos terminao "
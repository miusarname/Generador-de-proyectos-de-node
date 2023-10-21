@echo off
echo B  I  E  N  V  E  N  I  D  O  S
echo P  R  E  S  I  O  N  A  R    E  N  T  E  R    P  A  R  A    I  N  I  C  I  A  R    L  A    I  N  S  T  A  L  A  C  I  O  N
pause
npm init -y
npm install nodemon morgan dotenv
npm install cors express express-rate-limit express-routes-versioning express-session express-validator jose jsonwebtoken passport passport-http-bearer
cls
echo import express from 'express'; > index.js
echo import session from 'express-session'; >> index.js
echo import dotenv from 'dotenv'; >> index.js
echo import morgan from 'morgan'; >> index.js
echo import cors from 'cors'; >> index.js
echo. >> index.js
echo // Environment variables >> index.js
echo dotenv.config(); >> index.js
echo. >> index.js
echo // Initialize server >> index.js
echo const index = express(); >> index.js
echo. >> index.js
echo // Setting >> index.js
echo index.set('port', process.env.PORT || 3000); >> index.js
echo. >> index.js
echo // Middlewares >> index.js
echo index.use(morgan('dev')); >> index.js
echo index.use(cors()); >> index.js
echo index.use(express.json()); >> index.js
echo. >> index.js
echo // Routes >> index.js
echo // Here goes the routes you want to define, or at least that's what I recommend. >> index.js
echo. >> index.js
echo // Server >> index.js
echo index.listen(index.get("port"), () => { >> index.js
echo   console.log('Server on port ' + index.get('port')); >> index.js
echo }); >> index.js
mkdir app
mkdir controller
mkdir helpers
cd app
mkdir default
cd default
mkdir aplicacion
mkdir dominio
mkdir infraestructura
cd infraestructura
echo // Aca va tu codigo de logica, es decir algo como esto: >> default.js
echo. >> default.js
echo export const GetSpecialityDoc = async (speciality) => >> default.js
echo   await usuario.find({ speciality }).project({ consultingRoom: 0 }).toArray(); >> default.js
echo. >> default.js
cd ..
cd dominio
echo // Aca va el codigo de los DTOs es decir el codigo que 'prepara' tu codigo para ser tocado por los controladores, por ejemplo esto: >> default.models.js
echo. >> default.models.js
echo import { body } from "express-validator"; >> default.models.js
echo. >> default.models.js
echo export const medicoDTO = [ >> default.models.js
echo   body('nombreCompleto') >> default.models.js
echo     .notEmpty() >> default.models.js
echo     .withMessage('El nombreCompleto es obligatorio') >> default.models.js
echo     .isString() >> default.models.js
echo     .withMessage('EL nombreCompleto debe ser de tipo string'), >> default.models.js
echo   body('consultorio') >> default.models.js
echo     .notEmpty() >> default.models.js
echo     .withMessage('El consultorio es obligatorio') >> default.models.js
echo     .isObject() >> default.models.js
echo     .withMessage( >> default.models.js
echo       'EL consultorio debe ser de tipo Object y contener code y name' >> default.models.js
echo     ), >> default.models.js
echo   body('especialidad') >> default.models.js
echo     .notEmpty() >> default.models.js
echo     .withMessage('La especialidad es obligatorio') >> default.models.js
echo     .isString() >> default.models.js
echo     .withMessage('La especialidad debe ser de tipo string'), >> default.models.js
echo ]; >> default.models.js
cd ..
cd aplicacion
echo // Aca va el codigo de los controladores, es decir las funciones que recibiran el 'request'(req) y el 'response(res),y aca tambien importaremos la logica de la infraestructura, por ejemplo: >> default.controller.js
echo. >> default.controller.js
echo export function GetDoctorbySpeciality(req, res) { >> default.controller.js
echo   if (!req.params.value) >> default.controller.js
echo     return res >> default.controller.js
echo       .status(404) >> default.controller.js
echo       .json({ status: 404, message: 'Especialidad not found' }); >> default.controller.js
echo   try { >> default.controller.js
echo     const speciality = req.query.speciality.toLowerCase(); >> default.controller.js
echo     let responseToUser = GetSpecialityDoc(speciality); >> default.controller.js
echo     res.status(200).json({ status: 200, result: responseToUser }); >> default.controller.js
echo     return responseToUser; >> default.controller.js
echo   } catch (error) { >> default.controller.js
echo     res.status(404).json({ status: 404, message: 'speciality not found' }); >> default.controller.js
echo     return { status: 404, result: 'not found or Error', Error: error }; >> default.controller.js
echo   } >> default.controller.js
echo } >> default.controller.js
echo // Aca van las rutas, por ejemplo : >> default.routes.js
echo. >> default.routes.js
echo import { Router } from 'express'; >> default.routes.js
echo import { GetDoctorbySpeciality } from './doctor.controller.js'; >> default.routes.js
echo. >> default.routes.js
echo export const doctors = Router(); >> default.routes.js
echo. >> default.routes.js
echo doctors.get('/',GetDoctorbySpeciality) >> default.routes.js
cd ../../
cls
echo Hemos terminado

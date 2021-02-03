create table FichaDeInscripcionAM
(
	Id integer primary key auto_increment,
    NExpediente text not null,
    Region text not null,
    Sibasi text not null,
    EstablecimientoSalud text not null,
    ResponsableLlenado text not null,
    Fecha datetime not null,
    -- DATOS DE IDENTIFICACION
    Nombre text not null,
    Edad int not null,
    Sexo text not null,
    Direccion text not null,
    Escolaridad text not null,
    Ocupacion text not null,
    Religion text null,
    EstadoCivil text not null,
    Cuidador text,
    NombreCuidador text,
	Familiar text,
    Parentesco text,
    Responsable text,
    OcupacionCuidador text null,
    -- PRESENTE ENFERMEDAD
    PresenteEnfermedad text not null,
    -- ANTECEDENTES PERSONALES
    Diabetes text,
    HTA text,
    Artritis text,
    TB text,
    Cancer text,
    Alcoholismo text,
    Fumador text,
    VacunasAdulto1y2 text,
    VacunasAdulto123R text,
    VacunaAntiinfluenza text,
    FechaCitologia datetime,
    Resultado text not null,
    FechaProstata datetime,
    Resultado text not null,
    UsoMedicamentos text,
    Describa text,
    -- SITUACION SOCIOECONOMICA
    FechaIngresa datetime,
    GrupoFamiliar text,
    TipoVivienda text,
    ServiciosBasicos text,
    -- EXAMEN FISICO
    Peso text,
    Talla text,
    Pulso text,
    PresionArterial text,
    FrecuenciaCardiaca text,
    Temperatura text,
    FrecuenciaRespiratoria text,
    IMC text,
    -- EVALUACION POR SINTOMAS
    Piel text,
    Cabeza text,
    Ojos text,
    Oidos text,
    Nariz text,
    Boca text,
    Cuello text,
    Cardiovascular text,
    Pulmonar text,
    Torax text,
    Mamas text,
    Ultrasonografia text,
    Mamografia text,
    Abdomen text,
    Genitales text,
    MiembrosSuperiores text,
    MiembrosInferiores text,
    Observaciones text,
    EvaluacionFuncional text,
    EvaluacionMental text,
    EvaluacionMarcha text,
	EvaluaiconEstadoAnimo text,
    EvaluacionNutricional text,
    EvaluacionVisual text,
    EvaluacionAuditiva text,
	dolorcronico varchar(50),
intensidadDolor varchar(50),
periodoDolor varchar(50),
lugarDolor varchar(100),
incontinenciaUrinaria varchar(100),
adultoMenAbandono varchar(50),
adultoMconAbusoMaltrato varchar(50),
observaciones text,
-- Odontologia --
presenciaSarrosubOsupragingival text,
inflamacionGingival text,
movilidadDentaria varchar(20),
gradomovilidadDentaria varchar(30),
abrasion varchar(20),
atrision varchar(20),
lesionesCariosas text,
numeroPiezas int,
usoDprotesis varchar(20),
Otros text,
-- Examenes de laboratorio
examenHTyHB datetime,
examenGlicemia datetime,
examenCreatinina datetime,
examenAcidoUrico datetime,
examenETS_VIH datetime,
examenECG datetime,
examenHDL datetime,
examenLDL datetime,
examenColesterol datetime,
examenTrigleceridos datetime,
examenHeces datetime,
examenOrina datetime,
examenHecesmasSangreO datetime,
examenNitrogenoUreico datetime,
examenRxToraxAP datetime,
-- Diagnostico
estadoAdlutorM varchar(20),
tratamiento text,
referenciaA text,
procimaCita datetime,
-- Club a que pertenece
clubAdultosMayores varchar(50),
clubArtriticos varchar(50),
clubHipertensos varchar(50),
clubDiabeticos varchar(50),
otrosClubs varchar(100)
	--Gil
);
create table ProgramaAenSdelAdultoMayor(
id Integer primary key auto_increment,
NoExpediente text not null,
region text,
sibasi text not null,
establecimientoDsalud text not null,
personaEncargadaDllenada text not null,
fecha datetime not null,
-- datos de identificacion
fichaInsPrograma_id Integer not null,
CONSTRAINT fk_ficha FOREIGN KEY (fichaInsPrograma_id)
        REFERENCES FichaDeInscripcionAM(id),
nombreDelCuidador varchar(100),
-- Consulta por
consultaPor text,
-- Examen fisico
peso Decimal(10,2),
talla Decimal(10,2),
pulso varchar(50),
presionArterial varchar(50),
frecuenciaCardiaca varchar(50),
temperatura varchar(50),
frecuenciaRespiratoria varchar(50),
IMC varchar(50),
-- Evaluacion por sistemas
evaluacionpiel varchar(50),
evaluacioncabeza varchar(50),
evaluacionojos varchar(50),
evaluacionoidos varchar(50),
evaluacionnariz varchar(50),
evaluacionboca varchar(50),
evaluacioncuello varchar(50),
evaluacionCardiovascular varchar(50),
evaluacionPulmonar varchar(50),
evaluacionMamas varchar(50),
evaluacionUltrasonografia varchar(50),
evaluacionMamografia varchar(50),
evaluacionAbdomen varchar(50),
evaluacionGenitales varchar(50),
evaluacionMiembrosSuperiores varchar(50),
evaluacionMiembrosInferiores varchar(50),
observaciones text,
evaluacionFuncionales varchar(50),
evaluacionMental varchar(50),
evaluacionMarcha varchar(50),
evaluacionEstadoAnimo varchar(50),
evaluacionNutricional varchar(50),
evalucaionVisual varchar(50),
evaluacionAuditiva varchar(50),
-- Desde dolor cronico hasta Proxima cita
 dolorcronico varchar(50),
intensidadDolor varchar(50),
periodoDolor varchar(50),
lugarDolor varchar(100),
incontinenciaUrinaria varchar(100),
adultoMenAbandono varchar(50),
adultoMconAbusoMaltrato varchar(50),
observaciones text,
-- Odontologia --
presenciaSarrosubOsupragingival text,
inflamacionGingival text,
movilidadDentaria varchar(20),
gradomovilidadDentaria varchar(30),
abrasion varchar(20),
atrision varchar(20),
lesionesCariosas text,
numeroPiezas int,
usoDprotesis varchar(20),
Otros text,
-- Examenes de laboratorio
examenHTyHB datetime,
examenGlicemia datetime,
examenCreatinina datetime,
examenAcidoUrico datetime,
examenETS_VIH datetime,
examenECG datetime,
examenHDL datetime,
examenLDL datetime,
examenColesterol datetime,
examenTrigleceridos datetime,
examenHeces datetime,
examenOrina datetime,
examenHecesmasSangreO datetime,
examenNitrogenoUreico datetime,
examenRxToraxAP datetime,
-- Diagnostico
estadoAdlutorM varchar(20),
tratamiento text,
referenciaA text,
procimaCita datetime
);

-- continuacion
create table FormularioExpedienteClin(
id Integer primary key auto_increment,
nombreEstablecimiento text not null,
noExpediente text not null,
codigoECOF varchar(100) not null,
-- Datos del paciente
noDUI varchar(10),
noPasaporte varchar(20),
nombreCompleto varchar(200) not null,
fechaNacimiento date not null,
edadAños Integer,
edadMeses Integer,
edadDias Integer,
edadHoras Decimal(10,2),
sexo varchar(14) not null,
ocupacion varchar(45),
estadocivil varchar(30) not null,
direccionResidencia text not null,
departamento varchar(100) not null,
municipio varchar(100) not null,
canton varchar(100) not null,
area varchar(100) not null,
nacionalidad varchar(100) not null,
telefono varchar(100),
-- Datos de la familia
nombrePadre varchar(150),
nombreMadre varchar(150),
nombreConyugue varchar(150),
nombreResponsable varchar(150),
direccionResponsable text,
departamentoResponsable varchar(100),
municipioResponsable varchar(100),
telefonoResponsable varchar(50),
-- Datos de quien proporciono informacion del paciente
nombreQuienProporciono varchar(200),
parentesco varchar(100),
documentoIdentificacion varchar(10),
numeroDocumento varchar(50),
responsableTomarInfo varchar(200),
fechaIncripcion datetime,
observaciones text
);
create table FAntecedentesMedicos(
id Integer primary key auto_increment,
NombreEstablecimiento varchar(100),
    NombrePaciente varchar(100),
    FechaLlenado datetime,
    NumeroExpediente varchar(100),
    -- ANTECEDENTES FAMILIARES
    -- PATOLOGIAS
    HipertensionArterial varchar(20),
    HAParentesco varchar(100),
    Diabetes varchar(20),
    DParentesco varchar(100),
    AsmaBronquial varchar(20),
    ABParentesco varchar(100),
    TrastornosMentales varchar(20),
    TMParentesco varchar(100),
    Cancer varchar(20),
    CParentesco varchar(100),
    Otros varchar(20),
    OParentesco varchar(100),
    -- ANTECEDENTES PERSONALES
    -- EVENTOS
    FumaActualmente varchar(20),
    CigarrosPorDia varchar(20),
    AnioFumando varchar(20),
    FumoAlgunaVez varchar(20),
    AniosDejoDeFumar varchar(20),
    ContactoConFumadores varchar(20),
    Lugar varchar(100),
    TomaAlcohol varchar(20),
    BebidaDia varchar(20),
    VecesSemana varchar(20),
    AniosTomando varchar(20),
    UsaDrogasSustancias varchar(20),
    ReaccionesAdbersasMedicamentos varchar(20),
    Cirugias varchar(20),
    TraumatismosSeveros varchar(20),
    HipertensionArterial varchar(20),
    DiabetesMellitus varchar(20),
    Hipertiroidismo varchar(20),
    Hipotiroidismo varchar(20),
    Dislipidemia varchar(20),
    UlceraGastrica varchar(20),
    EnfermedadAcidoPeptica varchar(20),
    Epilepsia varchar(20),
    EnfermedadPulmonar varchar(20),
    EfermedadRenal varchar(20),
    ParalisisFraccida varchar(20),
    Dengue varchar(20),
    InfeccionesTransmisionSexual varchar(20),
    Chagas varchar(20),
    Tuberculosis varchar(20),
    Alergia varchar(20),
    OtraEnfermedadCardiovascular varchar(20),
    Cancer2 varchar(20),
    TrastornosMentalesComportamiento varchar(20),
    EnfermedadesEruptivas varchar(20),
    EnfermedadBucodental varchar(20),
    Artritis varchar(20),
    Colagenopatias varchar(20),
    Discapacidad varchar(20),
    AccidenteCerebrovascular varchar(20),
-- Historia gineco-obstetrica
edadMenarquia Integer,
patronMenstrual varchar(50),
edadRelacionesSexuales Integer,
anteUsoMetodosProteccion varchar(20),
tipoAnticonceptivo varchar(100),
esterilizacion varchar(20),
observacionesGO varchar(50),
-- Antecedentes de violencia
violenciaPsicologica varchar(20),
violenciaFisica varchar(20),
violenciaAutoinflingida varchar(20),
victmaAbandono varchar(20),
victimaTrataPersonas varchar(20),
observcaionesViolencia varchar(50),,
-- Riesgo laboral
ocupacion varchar(150),
riesgoLaboral varchar(20),
tipoExposicion varchar(150),
-- Esquema de vacunacion
vacunaBCG1raD varchar(20),
vacunaBCG2daD varchar(20),
vacunaBCG3raD varchar(20),
vacunaBCG1erR varchar(20),
vacunaBCG1doR varchar(20),
vacunaOPV1raD varchar(20),
vacunaOPV2daD varchar(20),
vacunaOPV3raD varchar(20),
vacunaOPV1erR varchar(20),
vacunaOPV2doR varchar(20),
vacunaPentavalente1raD varchar(20),
vacunaPentavalente2daD varchar(20),
vacunaPentavalente3raD varchar(20),
vacunaPentavalente1erR varchar(20),
vacunaPentavalente2doR varchar(20),
vacunaSPR1raD varchar(20),
vacunaSPR2daD varchar(20),
vacunaSPR3raD varchar(20),
vacunaSPR1erR varchar(20),
vacunaSPR2doR varchar(20),
vacunaDPT1raD varchar(20),
vacunaDPT2daD varchar(20),
vacunaDPT3raD varchar(20),
vacunaDPT1erR varchar(20),
vacunaDPT2doR varchar(20),
vacunaInfluenza1raD varchar(20),
vacunaInfluenza2daD varchar(20),
vacunaInfluenza3raD varchar(20),
vacunaInfluenza1erR varchar(20),
vacunaInfluenza2doR varchar(20),
vacunaRotavirus1raD varchar(20),
vacunaRotavirus2daD varchar(20),
vacunaRotavirus3raD varchar(20),
vacunaRotavirus1erR varchar(20),
vacunaRotavirus2doR varchar(20),
vacunaNeumococoI1raD varchar(20),
vacunaNeumococoI2daD varchar(20),
vacunaNeumococoI3raD varchar(20),
vacunaNeumococoI1erR varchar(20),
vacunaNeumococoI2doR varchar(20),
vacunaTd1raD varchar(20),
vacunaTd2daD varchar(20),
vacunaTd3raD varchar(20),
vacunaTd1erR varchar(20),
vacunaTd2doR varchar(20),
vacunaHB1raD varchar(20),
vacunaHB2daD varchar(20),
vacunaHB3raD varchar(20),
vacunaHB1erR varchar(20),
vacunaHB2doR varchar(20),
vacunaSR1raD varchar(20),
vacunaSR2daD varchar(20),
vacunaSR3raD varchar(20),
vacunaSR1erR varchar(20),
vacunaSR2doR varchar(20),
vacunaNeumococo23V1raD varchar(20),
vacunaNeumococo23V2daD varchar(20),
vacunaNeumococo23V3raD varchar(20),
vacunaNeumococo23V1erR varchar(20),
vacunaNeumococo23V2doR varchar(20)
);
create table TamizajeViolencia(
id Integer primary key auto_increment,
pacientenombre varchar(100),
pregunta1T varchar(20),
pregunta2T varchar(20),
pregunta3T varchar(20),
pregunta4T varchar(20),
pregunta5T varchar(20),
pregunta6T varchar(20),
pregunta7T varchar(20),
-- preguntas que complementan el tamizaje de violencia
pregunta8T varchar(20),
pregunta9T varchar(20),
pregunta10T varchar(20),
pregunta11T varchar(20),
pregunta12T varchar(20),
pregunta13T varchar(20),
pregunta14T varchar(20),
pregunta15T varchar(20),
pregunta16T varchar(20),
pregunta17T varchar(20),
pregunta18T varchar(20),
pregunta19T varchar(20),
pregunta20T varchar(20),
pregunta21T varchar(20),
pregunta22T varchar(20),
pregunta23T varchar(20),
pregunta24T varchar(20),
-- diagnostico de abuso emocional en la mujer o cualquier otro miembro en la familia
pregunta1A varchar(20),
pregunta2A varchar(20),
pregunta3A varchar(20),
pregunta4A varchar(20),
pregunta5A varchar(20),
pregunta6A varchar(20)
);
create table HistoriaClinicaHyM20a59(
id integer primary key auto_increment,
-- Datos generales
edad Integer not null,
estadoCivil varchar(50),
nombre varchar(150),
sexo varchar(30),
ocupacionActual varchar(50),
escolaridad varchar(70),
peso Decimal(10,2),
talla Decimal(10,2),
IMC varchar(50),
-- Factores de riesgo
consumoTabaco varchar(20),
sobrepeso varchar(20),
consumoAlcohol varchar(20),
desnutricion varchar(20),
Sedentarismo varchar(20),
automedicacion varchar(20),
-- Historia de salud medica
edadRelacionesSexuales integer,
noParejasSexuales varchar(20),
usoPreservativos varchar(30),
disfuncionesSexuales varchar(40),
padecimientoITS varchar(30),
noHijos Integer,
esterilizado varchar(20),
metodoPlanificacion varchar(20),
-- Antecedentes de salud general y morbilidad
diabetes varchar(20),
dislipidemia varchar(20),
Acidopeptica varchar(20),
prostatitis varchar(20),
HTA varchar(20),
IVU varchar(20),
ColonIrritable varchar(20),
CAProstata varchar(20),
Artritis varchar(20),
Neumonia varchar(20),
HiperProstBEN varchar(20),
CACervixMama varchar(20),
clubDiabeticos varchar(20),
clubHipertensos varchar(20),
examenProstata varchar(30),
ultimaRealizacion varchar(30),
citologiaUltima varchar(30),
refuerzoVacunaTd varchar(20),
caries varchar(20),
enfermedadPeridontal varchar(20),
estaEnTX varchar(20),
profilaxisAlgunaVez varchar(20)
);
create table ConsultaSubsecuenteHyM20a59(
id Integer primary key auto_increment,
motivoConsulta varchar(200),
HXpresenteEnfermedad text,
-- Examen fisico
presionArterial varchar(20),
pulso varchar(20),
frecuenciaRespiratoria varchar(20),
impresionDiagnostica text,
tratamientoConsejeria text,
referencia varchar(50),
firmaResponsable text,
sello text,
responsable varchar(30)
);

-- pág 14 
create table HojaSubsecuenteANiñao2a5(
id Integer primary key auto_increment,
nombre varchar(100) not null,
noExpediente text,
fechaConsulta datetime not null,
fechaNacimiento date not null,
edad Integer not null,
sexo varchar(30) not null,
motivoConsulta varchar(150),
-- aun estoy en dudad con los siguientes dos campos 
controlSubsecuente varchar(20),
morbilidad varchar(20),
-- signos vitales y somatometria
FC varchar(100),
FR varchar(100),
TA varchar(100),
peso Decimal(10,2),
temperatura Decimal(10,2),
Longitud Decimal(10,2),
PC varchar(100),
-- Evaluar signos de peligro
evaluacionNopuedebeber varchar(20),
evaluacionConvulsiones varchar(20),
evaluacionLetargico varchar(20),
evaluacionVomitaTodo varchar(20),
enfermedadGrave varchar(20),
niñoTosOdRespirar varchar(20),
cuantoTiempohace varchar(100),
noRespiracionesSeg varchar(30),
rapidaRespiracion varchar(20),
tirajeSubcostal varchar(20),
estridorResposo varchar(20),
sibilancias varchar(20),
niñoDiarrea varchar(20),

-- hacen falta datos

);

CREATE table HojaOdontologicaAtencionMenos5anios
(
    idHojaOndologica integer primary key auto_increment,
    Nombre varchar(100),
    NumeroRegistro varchar(100),
    Establecimiento varchar(100),
    Sexo varchar(50),
    FechaNacimiento date,
    FechaInscripcion datetime,
    Edad int,
    Peso decimal(10,2),
    TemperaturaCelcius decimal(10,2),
    MotivoConsulta varchar(100),
    -- NINO MENOR DE 8 DIAS
    FisuraLabial varchar(20),
    DientesNatales varchar(20),
    DientesNeonatales varchar(20),
    MoniliasisOral varchar(20),
    NingunSignoInfeccion varchar(20),
    RecienNacidoConRiesgo varchar(20),
    RecienNacidoSinRiesgo varchar(20),
    RecienNacidoBocaSana varchar(20),
    -- ODONTOGRAMA (FALTA AUN)
    
    FisuraLabial2 varchar(20),
    DientesNatales2 varchar(20),
    DientesNeonatales2 varchar(20),
    MoniliasisOral2 varchar(20),
    DolorDentalIntenso varchar(20),
    TumefaccionCara varchar(20),
    PiezaDentalDestruidaSinDolor varchar(20),
    PresenciaFistula varchar(20),
    DolorDental varchar(20),
    PiezaConMancha varchar(20),
    UlceracionTejidosBlandos varchar(20),
    EnciaInflamadaConHematoma varchar(20),
    DienteDesalojado varchar(20),
    DienteSinCaries varchar(20),
    MalAliento varchar(20),
    DientesEnciasSanas varchar(20),
    OtrasAlteraciones varchar(20),
    OtrosHallazgos varchar(100),
    Diagnostico varchar(100),
    -- EVALUAR ALIMENTACION SEGUN EDAD
    LactanciaMaterna varchar(20),
    Exclusiva varchar(20),
    Predominante varchar(20),
    Complementaria varchar(20),
    UsoDePacha varchar(20),
    FormulasLeche varchar(20),
    BebidasAzucaradas varchar(20),
    BebidasCarbonatadas varchar(20),
    IngiereOtraAlimentacion varchar(20),
    Cuales varchar(100),
    -- EVALUAR HIGIENE ORAL
    DuermeConPacha varchar(20),
    UtilizaCepilloDental varchar(20),
    EsDeUsoPersonal varchar(20),
    SeCepillaSolo varchar(20),
    RiesgoSocial varchar(20),
    UsaPastaDental varchar(20),
    SeTragaPastaDental varchar(20),
    UtilizaOtroAditivo varchar(20),
    Referencia varchar(20)    
);

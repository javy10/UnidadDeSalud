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
    EvaluacionAuditiva text
);
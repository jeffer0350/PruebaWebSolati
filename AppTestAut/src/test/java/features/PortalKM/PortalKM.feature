#Author: jtrianal@choucairtesting.com
#
@EventoPortalKM
Feature: CRUD Eventos Portal KM
  Como usuario que ingreso y selecciono los datos requeridos
  Deseo crear, actualizar y eliminar un evento en el aplicativo Portal KM
  Para ver los eventos programados

  @CrearEventoDuracionHasta @Caso01
  Scenario Outline: Crear evento duracion hasta
    Given Tengo datos de ingreso usuario <txtUsuario> y contrasena <txtContrasenia>
    And Elijo opcion menu <lnkOpcion>
    And Elijo opcion evento <lnkEvento>
    And Elijo opcion expandir <lnkExpandir>
    And Diligencio datos general TipoEvento <tipoEvento>
    And Diligencio datos TituloEvento <tituloEvento> Descripcion <descripcionEvento> DiaEvento <diaEvento> MesEvento <mesEvento> AnoEvento <anoEvento> HoraEvento <horaEvento> MinutoEvento <minutoEvento>
    And Diligencio datos duracion Hasta <hasta> DiaDuracion <diaDuracion> MesDuracion <mesDuracion> AnoDuracion <anoDuracion> HoraDuracion <horaDuracion> MinutoDuracion <minutoDuracion>
    And Diligencio eventos repetidos RepetirEvento <repetirEvento> RepetirSemanal <repetirSemanal>
    Then Guardar cambios <btnGuardar>

    Examples: 
      | txtUsuario | txtContrasenia | lnkOpcion | lnkEvento | lnkExpandir | tipoEvento | tituloEvento           | descripcionEvento         | diaEvento | mesEvento | anoEvento | horaEvento | minutoEvento | hasta | diaDuracion | mesDuracion | anoDuracion | horaDuracion | minutoDuracion | repetirEvento | repetirSemanal | btnGuardar |
      ##@externaldata@./src/test/resources/data/Evento/Crear/datCrearEventoDuracionHasta.xlsx@Hoja1
      | jtrianal   | Choucair.0350  | Click     | Click     | Click       | Usuario    | Curso automatizacion 2 | Programados para el curso |         1 | octubre   |      2018 |         11 |           15 | Click |          28 | octubre     |        2018 |           14 |             55 | Click         |              1 | Click      |

  @CrearEventoSinDuracion
  Scenario Outline: Crear evento sin duracion
    Given Tengo datos de ingreso usuario <txtUsuario> y contrasena <txtContrasenia>
    And Elijo opcion menu <lnkOpcion>
    And Elijo opcion evento <lnkEvento>
    And Elijo opcion expandir <lnkExpandir>
    And Diligencio datos general TipoEvento <tipoEvento>
    And Diligencio datos TituloEvento <tituloEvento> Descripcion <descripcionEvento> DiaEvento <diaEvento> MesEvento <mesEvento> AnoEvento <anoEvento> HoraEvento <horaEvento> MinutoEvento <minutoEvento>
    And Diligencio datos duracion SinDuracion <sinDuracion>
    And Diligencio eventos repetidos RepetirEvento <repetirEvento> RepetirSemanal <repetirSemanal>
    Then Guardar cambios <btnGuardar>

    Examples: 
      | txtUsuario | txtContrasenia | lnkOpcion | lnkEvento | lnkExpandir | tipoEvento | tituloEvento           | descripcionEvento         | diaEvento | mesEvento | anoEvento | horaEvento | minutoEvento | sinDuracion | repetirEvento | repetirSemanal | btnGuardar |
      ##@externaldata@./src/test/resources/data/Evento/Crear/datCrearEventoSinDuracion.xlsx@Hoja1
      | jtrianal   | Choucair.0350  | Click     | Click     | Click       | Usuario    | Curso automatizacion 2 | Programados para el curso |        30 | octubre   |      2018 |         11 |           15 | Click       | Click         |              1 | Click      |

  @CrearEventoDuracionMinutos
  Scenario Outline: Crear evento duracion minutos
    Given Tengo datos de ingreso usuario <txtUsuario> y contrasena <txtContrasenia>
    And Elijo opcion menu <lnkOpcion>
    And Elijo opcion evento <lnkEvento>
    And Elijo opcion expandir <lnkExpandir>
    And Diligencio datos general TipoEvento <tipoEvento>
    And Diligencio datos TituloEvento <tituloEvento> Descripcion <descripcionEvento> DiaEvento <diaEvento> MesEvento <mesEvento> AnoEvento <anoEvento> HoraEvento <horaEvento> MinutoEvento <minutoEvento>
    And Diligencio datos duracion DuracionMinutos <duracionMinutos>
    And Diligencio eventos repetidos RepetirEvento <repetirEvento> RepetirSemanal <repetirSemanal>
    Then Guardar cambios <btnGuardar>

    Examples: 
      | txtUsuario | txtContrasenia | lnkOpcion | lnkEvento | lnkExpandir | tipoEvento | tituloEvento           | descripcionEvento         | diaEvento | mesEvento | anoEvento | horaEvento | minutoEvento | duracionMinutos | repetirEvento | repetirSemanal | btnGuardar |
      ##@externaldata@./src/test/resources/data/Evento/Crear/datCrearEventoDuracionMinutos.xlsx@Hoja1
      | jtrianal   | Choucair.0350  | Click     | Click     | Click       | Usuario    | Curso automatizacion 2 | Programados para el curso |        29 | octubre   |      2018 |         11 |           15 |             105 | Click         |              1 | Click      |

  @ValidacionCrearEvento
  Scenario Outline: Validacion Crear evento
    Given Tengo datos de ingreso usuario <txtUsuario> y contrasena <txtContrasenia>
    And Elijo opcion menu <lnkOpcion>
    And Elijo opcion evento <lnkEvento>
    And Elijo opcion expandir <lnkExpandir>
    And Diligencio datos general TipoEvento <tipoEvento>
    And Diligencio datos TituloEvento <tituloEvento> Descripcion <descripcionEvento> DiaEvento <diaEvento> MesEvento <mesEvento> AnoEvento <anoEvento> HoraEvento <horaEvento> MinutoEvento <minutoEvento>
    And Diligencio datos duracion DuracionMinutos <duracionMinutos>
    And Diligencio eventos repetidos RepetirEvento <repetirEvento> RepetirSemanal <repetirSemanal>
    Then Guardar cambios <btnGuardar>

    Examples: 
      | txtUsuario | txtContrasenia | lnkOpcion | lnkEvento | lnkExpandir | tipoEvento | tituloEvento | descripcionEvento         | diaEvento | mesEvento | anoEvento | horaEvento | minutoEvento | duracionMinutos | repetirEvento | repetirSemanal | btnGuardar |
      ##@externaldata@./src/test/resources/data/Evento/Crear/datValidacionCrearEvento.xlsx@Hoja1
      | jtrianal   | Choucair.0350  | Click     | Click     | Click       | Usuario    |              | Programados para el curso |        15 | noviembre |      2018 |         11 |           15 |             105 | Click         |              1 | Click      |

  @ModificarEventoDuracionHasta
  Scenario Outline: Modificar evento duracion hasta
    Given Tengo datos de ingreso usuario <txtUsuario> y contrasena <txtContrasenia>
    And Elijo opcion menu <lnkOpcion>
    And Elijo opcion editar evento <lnkModificar>
    And Diligencio datos TituloEvento <tituloEvento> Descripcion <descripcionEvento> DiaEvento <diaEvento> MesEvento <mesEvento> AnoEvento <anoEvento> HoraEvento <horaEvento> MinutoEvento <minutoEvento>
    And Diligencio datos duracion Hasta <hasta> DiaDuracion <diaDuracion> MesDuracion <mesDuracion> AnoDuracion <anoDuracion> HoraDuracion <horaDuracion> MinutoDuracion <minutoDuracion>
    Then Guardar cambios <btnGuardar>

    Examples: 
      | txtUsuario | txtContrasenia | lnkOpcion | lnkModificar | tituloEvento           | descripcionEvento           | diaEvento | mesEvento | anoEvento | horaEvento | minutoEvento | hasta | diaDuracion | mesDuracion | anoDuracion | horaDuracion | minutoDuracion | btnGuardar |
      ##@externaldata@./src/test/resources/data/Evento/Modificar/datModificarEventoDuracionHasta.xlsx@Hoja1
      | jtrianal   | Choucair.0350  | Click     | Click        | Curso automatizacion 2 | Programados para el curso 2 |         1 | octubre   |      2018 |         11 |           15 | Click |          28 | octubre     |        2018 |           14 |             55 | Click      |

  @ModificarEventoSinDuracion
  Scenario Outline: Modificar evento sin duracion
    Given Tengo datos de ingreso usuario <txtUsuario> y contrasena <txtContrasenia>
    And Elijo opcion menu <lnkOpcion>
    And Elijo opcion editar evento <lnkModificar>
    And Diligencio datos TituloEvento <tituloEvento> Descripcion <descripcionEvento> DiaEvento <diaEvento> MesEvento <mesEvento> AnoEvento <anoEvento> HoraEvento <horaEvento> MinutoEvento <minutoEvento>
    And Diligencio datos duracion SinDuracion <sinDuracion>
    Then Guardar cambios <btnGuardar>

    Examples: 
      | txtUsuario | txtContrasenia | lnkOpcion | lnkModificar | tituloEvento           | descripcionEvento         | diaEvento | mesEvento | anoEvento | horaEvento | minutoEvento | sinDuracion | btnGuardar |
      ##@externaldata@./src/test/resources/data/Evento/Modificar/datModificarEventoSinDuracion.xlsx@Hoja1
      | jtrianal   | Choucair.0350  | Click     | Click        | Curso automatizacion 3 | Programados para el curso |        30 | octubre   |      2018 |         11 |           15 | Click       | Click      |

  @ModificarEventoDuracionMinutos
  Scenario Outline: Modificar evento duracion minutos
    Given Tengo datos de ingreso usuario <txtUsuario> y contrasena <txtContrasenia>
    And Elijo opcion menu <lnkOpcion>
    And Elijo opcion editar evento <lnkModificar>
    And Diligencio datos TituloEvento <tituloEvento> Descripcion <descripcionEvento> DiaEvento <diaEvento> MesEvento <mesEvento> AnoEvento <anoEvento> HoraEvento <horaEvento> MinutoEvento <minutoEvento>
    And Diligencio datos duracion DuracionMinutos <duracionMinutos>
    Then Guardar cambios <btnGuardar>

    Examples: 
      | txtUsuario | txtContrasenia | lnkOpcion | lnkModificar | tituloEvento           | descripcionEvento         | diaEvento | mesEvento | anoEvento | horaEvento | minutoEvento | duracionMinutos | btnGuardar |
      ##@externaldata@./src/test/resources/data/Evento/Modificar/datModificarEventoDuracionMinutos.xlsx@Hoja1
      | jtrianal   | Choucair.0350  | Click     | Click        | Curso automatizacion 4 | Programados para el curso |         2 | octubre   |      2018 |         11 |           15 |             105 | Click      |

  @EliminarEvento
  Scenario Outline: Eliminar evento
    Given Tengo datos de ingreso usuario <txtUsuario> y contrasena <txtContrasenia>
    And Elijo opcion menu <lnkOpcion>
    And Elijo opcion eliminar evento <lnkEliminar>
    And Elijo opcion borrar <btnBorrar>

    Examples: 
      | txtUsuario | txtContrasenia | lnkOpcion | lnkEliminar | btnBorrar |
      ##@externaldata@./src/test/resources/data/Evento/Eliminar/datEliminarEvento.xlsx@Hoja1
      | jtrianal   | Choucair.0350  | Click     | Click       | Click     |

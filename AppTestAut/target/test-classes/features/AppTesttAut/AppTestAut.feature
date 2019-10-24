#Author: Jefferson Triana
#
@EventoAppTestAut
Feature: CRUD App Web
  Como usuario que ingreso y agrego los datos requeridos
  Deseo crear, actualizar y eliminar un evento en el aplicativo Web
  Y ver el listado

  @AgregarDatos @Caso01
  Scenario Outline: Agregar datos en el aplicativo
    Given Elijo Agregar datos
    And Escribo codigo <strCodigo> nombres <strNombres> lugarNacimiento <strLugarNac> fechaNacimiento <strFechaNac> direccion <strDireccion> telefono <strTelefono> puesto <strPuesto>
    #And Selecciono estado <cmbEstado>
    #Then Guardar datos <btnGuardar>

    Examples: 
      | strCodigo | strNombres       | strLugarNac | strFechaNac | strDireccion    | strTelefono | strPuesto     | cmbEstado  | btnGuardar |
      |      0001 | Jefferson Triana | Pereira     | 03-01-1989  | Calle 56 85i 06 |  3195208958 | Automatizador | Contratado | Click      |

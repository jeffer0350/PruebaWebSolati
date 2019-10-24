package AppTestAut.definitions;

import AppTestAut.steps.AppTestAutSteps;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class AppTestAutDefinition {
	
	@Steps
	AppTestAutSteps appTestAutSteps;
	
	@Given("^Elijo Agregar datos$")
	public void elijo_Agregar_datos() {
		appTestAutSteps.seleccionarOpcion();
	}

	@Given("^Escribo codigo ([^\"]*) nombres ([^\"]*) lugarNacimiento ([^\"]*) fechaNacimiento ([^\"]*) direccion ([^\"]*) telefono ([^\"]*) puesto ([^\"]*)$")
	public void escribo_codigo_nombres_lugarNacimiento_fechaNacimiento_direccion_telefono_puesto(String strCodigo, String strNombres, String strLugarNac, String strFechaNac, String strDireccion, String strTelefono, String strPuesto) {
		appTestAutSteps.escribirDatos(strCodigo, strNombres, strLugarNac, strFechaNac, strDireccion, strTelefono, strPuesto);
	}

	@Given("^Selecciono estado Contratado$")
	public void selecciono_estado_Contratado() {

	}

	@Then("^Guardar datos Click$")
	public void guardar_datos_Click() {

	}
	
	
}
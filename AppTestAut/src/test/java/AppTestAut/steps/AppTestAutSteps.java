package AppTestAut.steps;

import AppTestAut.pageobjects.AppTestAutPageObjects;

public class AppTestAutSteps{
	
	AppTestAutPageObjects appTestAutPageObjects;

	public void seleccionarOpcion() {
		appTestAutPageObjects.open();
		appTestAutPageObjects.seleccionarOpcion();		
	}

	public void escribirDatos(String strCodigo, String strNombres, String strLugarNac, String strFechaNac,
			String strDireccion, String strTelefono, String strPuesto) {
		appTestAutPageObjects.escribirCodigo(strCodigo);
		appTestAutPageObjects.escribirNombres(strNombres);
		appTestAutPageObjects.escribirLugarNacimiento(strLugarNac);
		appTestAutPageObjects.escribirFechaNacimiento(strFechaNac);
		appTestAutPageObjects.escribirDireccion(strDireccion);
		appTestAutPageObjects.escribirTelefono(strTelefono);
		appTestAutPageObjects.escribirPuesto(strPuesto);
	}
	
}

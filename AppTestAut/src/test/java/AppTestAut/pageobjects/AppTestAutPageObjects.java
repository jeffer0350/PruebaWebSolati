package AppTestAut.pageobjects;

import net.serenitybdd.core.pages.PageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.Select;

import net.serenitybdd.core.Serenity;
import net.thucydides.core.annotations.DefaultUrl;

@DefaultUrl("http://localhost/Prueba/")

public class AppTestAutPageObjects extends PageObject{

	public void seleccionarOpcion() {
		String strXpath = "//a[text()='Agregar datos']";
		find(By.xpath(strXpath)).click();
		Serenity.takeScreenshot();
	}

	public void escribirCodigo(String strCodigo) {
		findBy("//input[@name='codigo']").type(strCodigo);
		Serenity.takeScreenshot();
		
	}

	public void escribirNombres(String strNombres) {
		findBy("//input[@name='nombres']").type(strNombres);
		Serenity.takeScreenshot();
	}

	public void escribirLugarNacimiento(String strLugarNac) {
		findBy("//input[@name='lugar_nacimiento']").type(strLugarNac);
		Serenity.takeScreenshot();
	}

	public void escribirFechaNacimiento(String strFechaNac) {
		findBy("//input[@name='fecha_nacimiento']").type(strFechaNac);
		String xpath1 = "/html/body/div[1]/div/form/div[4]/div/input";
		findBy(xpath1).sendKeys(Keys.TAB);
	}

	public void escribirDireccion(String strDireccion) {
		findBy("//textarea[@name='direccion']").type(strDireccion);
		Serenity.takeScreenshot();
	}

	public void escribirTelefono(String strTelefono) {
		findBy("//input[@name='telefono']").type(strTelefono);
		Serenity.takeScreenshot();
	}

	public void escribirPuesto(String strPuesto) {
		findBy("//input[@name='puesto']").type(strPuesto);
		Serenity.takeScreenshot();
	}
	
}

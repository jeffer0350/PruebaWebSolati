package AppTestAut.runners;

import java.io.IOException;

//import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.junit.runner.RunWith;

//import com.banrep.automatizacion.toolbox.BeforeSuite;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import net.serenitybdd.cucumber.CucumberWithSerenity;

@RunWith(CucumberWithSerenity.class)
//@RunWith(Cucumber.class)
@CucumberOptions(    tags = {"@Caso01"}, 
                   //plugin = {"json:target/cucumber-report/bz_main_runner.json" },
                   features = {"src/test/resources/features/AppTesttAut"},
                   glue = {"AppTestAut.definitions"}
              )

public class AppTestAut {
	
}

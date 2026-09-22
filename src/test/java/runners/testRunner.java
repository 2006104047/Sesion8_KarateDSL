package runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class testRunner {
    
    @Karate.Test
    void test(){
        Results results = Runner.path("classpath:features")
                .outputCucumberJson(true)
                .parallel(2);
        assertEquals(0,results.getFailCount(),results.getErrorMessages());
    }



}

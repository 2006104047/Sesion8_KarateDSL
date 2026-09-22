package util;

import java.util.UUID;

public class Util {

    public static int obtenerNumeroAleatorio(){
        int random = (int)(Math.random()*1000);
        return random;
    }

    public  static String generarRequestId(){
        return UUID.randomUUID().toString();

    }

}

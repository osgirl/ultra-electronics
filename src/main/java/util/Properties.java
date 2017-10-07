package util;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/**
 * Created by chathuri on 10/7/17.
 */
public class Properties {
    private static Properties instance = new Properties();
    java.util.Properties props = new java.util.Properties();

    public static Properties getInstance() {
        return instance;
    }

    private Properties() {
        ClassLoader classLoader = getClass().getClassLoader();
        InputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(new File(classLoader.getResource("configurations.properties").getPath()));
            props.load(fileInputStream);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getProperty(String key){
        return props.getProperty(key);
    }
}

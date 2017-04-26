/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.beans;
import cl.expertchoice.clases.Files;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.codec.binary.Base64;

/**
 *
 * @author jgalleguillos
 */
public class BnArchivos {
    
    
    public boolean returnPDF(HttpServletResponse response, Files f) throws IOException {
        if (f.getTipo() == 1) {
            File fa = new File(f.getUrl());

            String base64 = Base64.encodeBase64String(createByteArray(fa));
            byte[] decodedBytes = Base64.decodeBase64(base64);
            response.setContentType("application/pdf");
            response.getOutputStream().write(decodedBytes);

        }

        return true;
    }

    public static byte[] createByteArray(File file) {

        if (!file.exists()) {
            return null;
        }

        FileInputStream fin = null;
        try {
            fin = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        byte fileContent[] = new byte[(int) file.length()];

        try {
            fin.read(fileContent);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return fileContent;
    }
    
}

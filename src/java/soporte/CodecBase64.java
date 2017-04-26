/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package soporte;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import org.apache.tomcat.util.codec.binary.Base64;

public class CodecBase64 {
     public static final boolean IS_CHUNKED = true;

    public static void main(String args[]) throws Exception {
        String path = System.getProperty("catalina.base") + File.separator + "webapps" + File.separator + "CECC" + File.separator;
        String folder = "FilesUP" + File.separator;

        /* Codifica el archivo y escribe la salida codificada. */
        String texto = encodeToString("/home/jgalleguillos/Escritorio/ContratoSinacofi.pdf", IS_CHUNKED);
        System.out.println(texto);

        /* Decodificar un archivo y escribir el archivo*/
//        decodeString(texto, "/Users/JonnathanToro/Desktop/pruebaXML.xml");
    }

    /**
     * This method converts the content of a source file into Base64 encoded
     * data and saves that to a target file. If isChunked parameter is set to
     * true, there is a hard wrap of the output encoded text.
     */
    public static void encode(String sourceFile, String targetFile, boolean isChunked) throws Exception {

        byte[] base64EncodedData = Base64.encodeBase64(loadFileAsBytesArray(sourceFile), isChunked);

        writeByteArraysToFile(targetFile, base64EncodedData);
    }

    public static String encodeToString(String sourceFile, boolean isChunked) throws Exception {

        byte[] base64EncodedData = Base64.encodeBase64(loadFileAsBytesArray(sourceFile), isChunked);

        return writeByteArraysToString(base64EncodedData);
    }

    public static void decode(String sourceFile, String targetFile) throws Exception {

        byte[] decodedBytes = Base64.decodeBase64(loadFileAsBytesArray(sourceFile));

        writeByteArraysToFile(targetFile, decodedBytes);
    }

    public static void decodeString(String sourceString, String targetFile) throws Exception {

        byte[] decodedBytes = Base64.decodeBase64(sourceString);

        writeByteArraysToFile(targetFile, decodedBytes);
    }

    /**
     * This method loads a file from file system and returns the byte array of
     * the content.
     *
     * @param fileName
     * @return
     * @throws Exception
     */
    public static byte[] loadFileAsBytesArray(String fileName) throws Exception {

        File file = new File(fileName);
        int length = (int) file.length();
        BufferedInputStream reader = new BufferedInputStream(new FileInputStream(file));
        byte[] bytes = new byte[length];
        reader.read(bytes, 0, length);
        reader.close();
        return bytes;

    }

    /**
     * This method writes byte array content into a file.
     *
     * @param fileName
     * @param content
     * @throws IOException
     */
    public static void writeByteArraysToFile(String fileName, byte[] content) throws IOException {

        File file = new File(fileName);
        BufferedOutputStream writer = new BufferedOutputStream(new FileOutputStream(file));
        writer.write(content);
        writer.flush();
        writer.close();

    }

    public static String writeByteArraysToString(byte[] content) throws IOException {

        //File file = new File(fileName);
        String str = new String(content, StandardCharsets.UTF_8);

        return str;

    }
}

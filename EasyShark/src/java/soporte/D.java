package soporte;

public class D {
    public static String ESQUEMA = "easy";
    public static String TITULO = "easy Shark";
//    public static String DOMINIO = "http://easy.ecloudapp.cl/";
    public static String DOMINIO = "localhost:8084/easy.V0";
     //Estados de respuesta ajax
    public static final int EST_OK = 200;
    public static final int EST_ERROR = 404;
    public static final int EST_NORESULTADO = 405;
    
    	public static String NUMEROS = "0123456789";
 
	public static String MAYUSCULAS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
 
	public static String MINUSCULAS = "abcdefghijklmnopqrstuvwxyz";
 
	public static String ESPECIALES = "ñÑ";
 
	//
	public static String getPinNumber() {
		return getPassword(NUMEROS, 4);
	}
 
	public static String getPassword() {
		return getPassword(8);
	}
 
	public static String getPassword(int length) {
		return getPassword(NUMEROS + MAYUSCULAS + MINUSCULAS, length);
	}
 
	public static String getPassword(String key, int length) {
		String pswd = "";
 
		for (int i = 0; i < length; i++) {
			pswd+=(key.charAt((int)(Math.random() * key.length())));
		}
 
		return pswd;
	}
}

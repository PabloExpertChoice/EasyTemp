package cl.expertchoice.beans;

public class BnScore {

//    public static void main(String[] args) {
//        System.out.println(obtenerScore(13300593, "5", 0));
//        System.out.println(obtenerScore(13300593, "5", 1));
//        System.out.println(obtenerScore(13300593, "5", 2));
//        System.out.println(obtenerScore(13300593, "5", 3));
//    }

    public static int obtenerScoring(int rut, String dv, int mes) {
        int score = 0;
        try {
            java.lang.String usuario = "emaribur";
            java.lang.String clave = "123456";
            tk.chdocccrespaldo.ws_score.WSGetScoreWSService service = new tk.chdocccrespaldo.ws_score.WSGetScoreWSService();
            tk.chdocccrespaldo.ws_score.WSGetScoreWS port = service.getWSGetScoreWSPort();
            tk.chdocccrespaldo.ws_score.Response result = port.getScore(rut + dv, usuario, clave, mes + "");
            score = (int) Math.ceil(Double.parseDouble(result.getValor()) * 1000);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return score;
    }
}
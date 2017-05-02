package cl.expertchoice.beans;

public class BnScore {

    public static int obtenerScoring(int rut, String dv, int mes) {
        int score = 0;
        try {
            java.lang.String usuario = "emaribur";
            java.lang.String clave = "123456";
            com.chdoccc.ws_score.WSGetScoreWSService service = new com.chdoccc.ws_score.WSGetScoreWSService();
            com.chdoccc.ws_score.WSGetScoreWS port = service.getWSGetScoreWSPort();
            com.chdoccc.ws_score.Response result = port.getScore(rut + dv, usuario, clave, mes + "");
            score = (int) Math.ceil(Double.parseDouble(result.getValor()) * 1000);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return score;
    }
}

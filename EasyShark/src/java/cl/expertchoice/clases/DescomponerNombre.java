package cl.expertchoice.clases;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author jgalleguillos
 */
public class DescomponerNombre {

    private String nombre = null;
    private String NOMBRES = "";
    private String APELLIDOP = "";
    private String APELLIDOM = "";
    private ArrayList<String> aux = new ArrayList<String>();

    private final String[] pref
            = {
                "al", "da", "dal", "d", "de", "del", "den", "der", "di",
                "el", "la", "las", "le", "lo", "los", "mac", "mc", "san", "van",
                "von", "y", "della", "w", "s", "l'", "puz", "zu", "pen", "bia", "odo",
                "o'", "c", "de'", "jr", "bom", "dos", "l", "g", "of", "ji", "v", "st.",
                "des", "f", "max", "LE-", "st", "vom", "sn", "dr", "-", "in", "a", "lla",
                "ev", "d'", "pun", "si", "vda", "abd", "sta", "abu", "ep", "n", "dus", "ben",
                "e", "santa", "du", "dem", "geb", "don", "do"
            };

    /**
     * Constructor principal de la clase, el cual debe recivir como parametro el
     * nombre que se quiere descomponer
     *
     * @param nombre
     * @throws SQLException
     */
    public DescomponerNombre(String nombre) throws SQLException {
        this.nombre = nombre.replace("  ", " ");
    }

    /**
     * Metodo que retorna un String con el nombre retornado por la consulta
     *
     * @return String
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * Metodo que retorna un String con el valor de la variable NOMBRES
     *
     * @return String
     */
    public String getNOMBRES() {
        return NOMBRES;
    }

    /**
     * Metodo que asigna un String a la variable NOMBRES
     *
     * @param NOMBRES String
     */
    public void setNOMBRES(String NOMBRES) {
        this.NOMBRES = NOMBRES;
    }

    /**
     * Metodo que retorna un String con el valor de la variable APELLIDOP
     *
     * @return String
     */
    public String getAPELLIDOP() {
        return APELLIDOP;
    }

    /**
     * Metodo que asigna un String a la variable APELLIDOP
     *
     * @param APELLIDOP String
     */
    public void setAPELLIDOP(String APELLIDOP) {
        this.APELLIDOP = APELLIDOP;
    }

    /**
     * Metodo que retorna un String con el valor de la variable APELLIDOM
     *
     * @return String
     */
    public String getAPELLIDOM() {
        return APELLIDOM;
    }

    /**
     * Metodo que asigna un String a la variable APELLIDOM
     *
     * @param APELLIDOM String
     */
    public void setAPELLIDOM(String APELLIDOM) {
        this.APELLIDOM = APELLIDOM;
    }

    /**
     * Metodo que recibe como parametro un nombre completo y lo descompone en
     * nombres, apellido paterno y apellido materno
     *
     * @param nombre String
     */
    public void descomponeApellidoNombre() throws SQLException {
        nombre = nombre.toUpperCase().trim();
        int len = nombre.trim().replace("  ", " ").split(" ").length;
        switch (len) {
            case 1: {
                largo1(nombre);
                break;
            }
            case 2: {
                largo2(nombre);
                break;
            }
            case 3: {
                largo3(nombre);
                break;
            }
            case 4: {
                largo5(nombre);
                break;
            }
            case 5: {
                largo5(nombre);
                break;
            }
            default: {
                largo5(nombre);
                break;
            }

        }

    }

    /**
     * Metodo que recibe como parametro un nombre completo y lo descompone en
     * nombres, apellido paterno y apellido materno
     *
     * @param nombre String
     */
    public void descomponeNombreApellido() throws SQLException {

        nombre = nombre.toUpperCase().trim();
        largo4_2(nombre);

    }

    /**
     * Metodo consulta la vace de datos si el String enviado se encuentra en los
     * prefijos
     *
     * @param pref String
     * @return true en caso de encontrarse
     */
    public boolean consultarPref(String nombre) throws SQLException {
        for (int i = 0; i < pref.length; i++) {
            if (nombre.trim().equalsIgnoreCase(pref[i])) {

                return true;

            }

        }
        return false;
    }

    /**
     * Metodo que retorna el primer nombre en la variable NOMBRES
     *
     * @return String
     */
    public String getPrimerNombre() {
        String aux = "";
        String[] nombres = NOMBRES.trim().split(" ");

        int cant = 0;
        boolean b = false;
        try {
            do {

                aux = aux.trim() + " " + nombres[cant];

                b = false;

                for (int i = 0; i < pref.length; i++) {
                    if (nombres[cant].trim().equalsIgnoreCase(pref[i])) {

                        b = true;
                    }

                }

                cant++;
            } while (b);
        } catch (Exception e) {

        }
        return aux;
    }

    /**
     * Metodo encargado de descomponer un nombre en pormato nombre apellido
     *
     * @param nombre String con el nombre a descomponer
     */
    public void largo4_2(String nombre) {
        try {
            boolean b = true;
            boolean p = true;
            int cant = nombre.replaceAll("  ", " ").split(" ").length - 1;
            String[] nombres = nombre.replaceAll("  ", " ").split(" ");
            ArrayList<String> pater = new ArrayList<String>();
            ArrayList<String> mater = new ArrayList<String>();
            ArrayList<String> nom = new ArrayList<String>();
            try {
                do {

                    mater.add(nombres[cant--]);

                    b = false;

                    for (int i = 0; i < pref.length; i++) {
                        if (nombres[cant].trim().equalsIgnoreCase(pref[i])) {

                            b = true;
                        }

                    }

                    if (apellidosCompuestos(nombres, cant)) {
                        b = true;
                    }

                } while (b);
            } catch (Exception e) {

            }

            for (int i = mater.size() - 1; i >= 0; i--) {
                APELLIDOM += " " + mater.get(i);
            }

            try {
                do {
                    b = false;

                    pater.add(nombres[cant--]);

                    for (int i = 0; i < pref.length; i++) {
                        if (nombres[cant].trim().equalsIgnoreCase(pref[i])) {

                            b = true;

                        }

                    }

                    if (apellidosCompuestos(nombres, cant)) {
                        b = true;
                    }

                } while (b);
            } catch (Exception e) {

            }
            for (int i = pater.size() - 1; i >= 0; i--) {
                APELLIDOP += " " + pater.get(i);
            }

            String nombreaux = "";
            for (int i = cant; i >= 0; i--) {
                nombreaux += nombres[i] + " ";
            }
            String aux = "";

            for (int i = nombreaux.trim().split(" ").length - 1; i >= 0; i--) {
                aux += nombreaux.trim().split(" ")[i] + " ";
            }

            setNOMBRES(aux.trim());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * Metodo encargado de descomponer un nombre en pormato apellido nombre, con
     * una cantidad de 4 palabras
     *
     * @param linea String con el nombre a descomponer
     */
    public void largo4(String linea) {
        try {
            String nombre = null;

            String NOMBRES = "";
            String APELLIDOP = "";
            String APELLIDOM = "";
            nombre = "";
            int cant = 0;
            String[] nombres = nombre.replaceAll("  ", " ").split(" ");

            APELLIDOP = (nombres[cant]);
            cant++;
            APELLIDOM = (nombres[cant]);
            cant++;

            for (; cant < nombres.length; cant++) {
                nombre += nombres[cant] + " ";
            }
            NOMBRES = (nombre);

        } catch (Exception e) {
            largo3(linea);
        }

    }

    /**
     * Metodo encargado de descomponer un nombre en pormato apellido nombre, con
     * una cantidad de 3 palabras
     *
     * @param linea String con el nombre a descomponer
     */
    public void largo3(String linea) {
        String nombre = null;
        String NOMBRES = "";
        String APELLIDOP = "";
        String APELLIDOM = "";
        nombre = "";
        int cant = 0;
        String[] nombres = linea.replaceAll("  ", " ").split(" ");

        setAPELLIDOP(nombres[cant]);
        cant++;

        setAPELLIDOM(nombres[cant]);
        cant++;

        for (; cant < nombres.length; cant++) {
            nombre += nombres[cant] + " ";
        }
        setNOMBRES(nombre);


    }

    /**
     * Metodo encargado de descomponer un nombre en pormato apellido nombre, con
     * una cantidad de 2 palabras
     *
     * @param linea String con el nombre a descomponer
     */
    public void largo2(String linea) {
        String nombre = null;
        String NOMBRES = "";
        String APELLIDOP = "";
        String APELLIDOM = "";
        nombre = "";
        int cant = 0;
        String[] nombres = linea.replaceAll("  ", " ").split(" ");

        setAPELLIDOP(nombres[cant]);
        cant++;
//        APELLIDOM = (nombres[cant]);
//        cant++;

        for (; cant < nombres.length; cant++) {
            nombre += nombres[cant] + " ";
        }
        setNOMBRES(nombre);


    }

    /**
     * Metodo encargado de descomponer un nombre en pormato apellido nombre, con
     * una cantidad de más de 4 palabras
     *
     * @param linea String con el nombre a descomponer
     */
    public void largo5(String nombre) {
        boolean b = true;
        boolean p = true;
        int cant = 0;
        String[] nombres = nombre.replaceAll("  ", " ").split(" ");
        try {
            do {
                b = false;

                for (int i = 0; i < pref.length; i++) {
                    if (nombres[cant].trim().equalsIgnoreCase(pref[i])) {

                        b = true;

                    }

                }
                if (apellidosCompuestos2(nombres, cant)) {
                    b = true;
                }

                APELLIDOP += " " + nombres[cant++];

            } while (b);

            do {
                b = false;
                for (int i = 0; i < pref.length; i++) {
                    if (nombres[cant].trim().equalsIgnoreCase(pref[i])) {

                        b = true;
                    }

                }

                if (apellidosCompuestos2(nombres, cant)) {
                    b = true;
                }

                APELLIDOM += " " + nombres[cant++];
            } while (b);

            String nombreaux = "";
            for (; cant < nombres.length; cant++) {
                nombreaux += nombres[cant] + " ";
            }

            NOMBRES = (nombreaux);
        } catch (Exception e) {
            largo4(nombre);
        }
    }

    /**
     * Metodo encargado de asignar el nombre con catidad de palabras igual a 1
     * al apellido paterno
     *
     * @param linea String con el nombre a descomponer
     */
    private void largo1(String nombre) {
        setAPELLIDOP(nombre);
    }

    /**
     * metodo al que se le pasa como parametros el nombre analizado en formato
     * apellido nombre y la posision actual, este comprueba que no sea un
     * apellido compuesto
     *
     * @param nombres array de String con el nombre a descomponer
     * @param cant int con el indice de la posición a evaluar
     * @return true en caso de contener un apellido compuesto
     */
    public boolean apellidosCompuestos(String[] nombres, int cant) {
        boolean b = false;
        try {
            if (nombres[cant].trim().equalsIgnoreCase("peña")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("y")) {
                    //System.err.println("  " + nombres[cant].trim()+" "+nombres[cant+1]+" "+nombres[cant+2]);

                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("y")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("lillo")) {
                    //System.err.println("  " + nombres[cant].trim()+" "+nombres[cant+1]+" "+nombres[cant+2]);

                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("peña")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("i")) {
                    //System.err.println("  " + nombres[cant].trim()+" "+nombres[cant+1]+" "+nombres[cant+2]);

                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("i")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("lillo")) {
                    //System.err.println("  " + nombres[cant].trim()+" "+nombres[cant+1]+" "+nombres[cant+2]);

                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("ruiz")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("tagle")) {
                    //System.err.println("  " + nombres[cant].trim()+" "+nombres[cant+1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("rui")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("perez")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("lay")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("men")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("lay")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("son")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("lay")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("wangnet")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("lay")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("IEONG")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("lay")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("WON")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("HAY")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("SANG")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ora")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("YANURI")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("chu")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("han")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("sur")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("LIPPE")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ao")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("IEONG")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("auf")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("KIESLINGSTEIN")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("too")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("kong")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("fung")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("moo")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("jul")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("CLURTHILL")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("yi")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("YAPSAN")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("cau")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("cau")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("taj")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("taj")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("eh")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("ren")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ren")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("FELD")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("dow")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("RODERICK")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("te")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("KLOOT")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("GUIN")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("po")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("WAH")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("HING")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("CORTEZ")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("ruy")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ZARATE")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("ruy")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("RUPAILLAN")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("ruy")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("VILLALOBOS")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("ruy")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("MALDONADO")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("ruy")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("le")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("got")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("din")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("BARRAZA")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("e-v")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("GOOSSENS")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("PONCE")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("de")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    if (nombres[cant + 2].trim().equalsIgnoreCase("Leon")) {
                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;
                    }
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("ten")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("HOVE")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("cg")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("GARDINI")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("bas")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("PALMA")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("eve")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("LAURENCE")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("orr")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("devia")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("dit")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("cachin")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("dio")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("medi")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("mal")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("verde")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("yo")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("yo")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("nin")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("de")) {
                    if (nombres[cant + 2].trim().equalsIgnoreCase("cardona")) {
                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;
                    }
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("jan")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("del")) {
                    if (nombres[cant + 2].trim().equalsIgnoreCase("PEDREGAL")) {
                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;
                    }
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("sal")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("y")) {
                    if (nombres[cant + 2].trim().equalsIgnoreCase("rosa")) {
                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;
                    }
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("foo")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("lam")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("gut")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("mann")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }

        } catch (Exception e) {
        }
        try {
            if (nombres[cant + 1].trim().equalsIgnoreCase("-")) {

                //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                b = true;

            }

        } catch (Exception e) {
        }
        try {
            if (nombres[cant + 1].trim().equalsIgnoreCase("i")) {

                //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                b = true;

            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant + 1].trim().equalsIgnoreCase("ii")) {

                //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                b = true;

            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant + 1].trim().equalsIgnoreCase("iii")) {

                //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                b = true;

            }

        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("li")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("kso")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("py")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("MARGALL")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("fon")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("RAUCH") || nombres[cant + 1].trim().equalsIgnoreCase("RAUSCH")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("yun")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("kan")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("oses")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("de")) {
                    if (nombres[cant + 2].trim().equalsIgnoreCase("la")) {
                        if (nombres[cant + 3].trim().equalsIgnoreCase("guardia")) {

                            //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                            b = true;

                        }
                    }
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("an")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("DER")) {
                    if (nombres[cant + 2].trim().equalsIgnoreCase("FUHREN")) {

                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;

                    }
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("montes")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("de")) {
                    if (nombres[cant + 1].trim().equalsIgnoreCase("oca")) {

                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;

                    }
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ira")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("ira")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }

        try {
            if (nombres[cant].trim().equalsIgnoreCase("cui")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("cui")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }

        return b;
    }

    /**
     * metodo al que se le pasa como parametros el nombre analizado en formato
     * nombre apellido y la posision actual, este comprueba que no sea un
     * apellido compuesto
     *
     * @param nombres array de String con el nombre a descomponer
     * @param cant int con el indice de la posición a evaluar
     * @return true en caso de contener un apellido compuesto
     */
    public boolean apellidosCompuestos2(String[] nombres, int cant) {
        boolean b = false;
        try {
            if (nombres[cant].trim().equalsIgnoreCase("y")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("peña")) {
                    //System.err.println("  " + nombres[cant].trim()+" "+nombres[cant+1]+" "+nombres[cant+2]);

                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("lillo")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("y")) {
                    //System.err.println("  " + nombres[cant].trim()+" "+nombres[cant+1]+" "+nombres[cant+2]);

                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("i")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("peña")) {
                    //System.err.println("  " + nombres[cant].trim()+" "+nombres[cant+1]+" "+nombres[cant+2]);

                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("lillo")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("i")) {
                    //System.err.println("  " + nombres[cant].trim()+" "+nombres[cant+1]+" "+nombres[cant+2]);

                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("tagle")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("ruiz")) {
                    //System.err.println("  " + nombres[cant].trim()+" "+nombres[cant+1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }

        try {
            if (nombres[cant].trim().equalsIgnoreCase("perez")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("rui")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("men")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("lay")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("son")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("lay")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("wangnet")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("lay")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("IEONG")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("lay")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }

        try {
            if (nombres[cant].trim().equalsIgnoreCase("WON")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("lay")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }

        try {

            if (nombres[cant].trim().equalsIgnoreCase("SANG")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("hay")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("YANURI")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("ora")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("han")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("chu")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("LIPPE")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("sur")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("IEONG")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("ao")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("KIESLINGSTEIN")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("auf")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("kong")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("too")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("moo")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("fung")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("CLURTHILL")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("jul")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("YAPSAN")) {
                if (nombres[cant + 1].trim().equalsIgnoreCase("yi")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("cau")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("cau")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("taj")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("taj")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ren")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("eh")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("FELD")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("ren")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("RODERICK")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("dow")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("KLOOT")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("te")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("po")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("GUIN")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("HING")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("wah")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ruy")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("CORTEZ")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ruy")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("ZARATE")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ruy")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("RUPAILLAN")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ruy")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("VILLALOBOS")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ruy")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("MALDONADO")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("got")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("le")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("BARRAZA")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("din")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("GOOSSENS")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("e-v")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("Leon")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("de")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    if (nombres[cant - 2].trim().equalsIgnoreCase("ponce")) {
                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;
                    }
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("HOVE")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("ten")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("GARDINI")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("cg")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {

            if (nombres[cant].trim().equalsIgnoreCase("PALMA")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("bas")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("LAURENCE")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("eve")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("devia")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("orr")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("cachin")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("dit")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("medi")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("dio")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("verde")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("mal")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("yo")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("yo")) {
                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("cardona")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("de")) {
                    if (nombres[cant - 2].trim().equalsIgnoreCase("nin")) {
                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;
                    }
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("PEDREGAL")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("del")) {
                    if (nombres[cant - 2].trim().equalsIgnoreCase("jan")) {
                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;
                    }
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("rosa")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("y")) {
                    if (nombres[cant - 2].trim().equalsIgnoreCase("sal")) {
                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;
                    }
                }
            }
        } catch (Exception e) {
        }

        try {
            if (nombres[cant].trim().equalsIgnoreCase("lam")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("foo")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("mann")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("gut")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }

        } catch (Exception e) {
        }
        try {
            if (nombres[cant - 1].trim().equalsIgnoreCase("-")) {

                //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                b = true;

            }

        } catch (Exception e) {
        }
        try {
            if (nombres[cant - 1].trim().equalsIgnoreCase("i")) {

                //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                b = true;

            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant - 1].trim().equalsIgnoreCase("ii")) {

                //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                b = true;

            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant - 1].trim().equalsIgnoreCase("iii")) {

                //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                b = true;

            }

        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("kso")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("li")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("MARGALL")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("py")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("RAUCH") || nombres[cant].trim().equalsIgnoreCase("RAUSCH")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("fon")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("kan")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("yun")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("guardia")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("la")) {
                    if (nombres[cant - 2].trim().equalsIgnoreCase("de")) {
                        if (nombres[cant - 3].trim().equalsIgnoreCase("oses")) {

                            //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                            b = true;

                        }
                    }
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("FUHREN")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("DER")) {
                    if (nombres[cant - 2].trim().equalsIgnoreCase("an")) {

                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;

                    }
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("oca")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("de")) {
                    if (nombres[cant - 2].trim().equalsIgnoreCase("montes")) {

                        //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                        b = true;

                    }
                }
            }
        } catch (Exception e) {
        }
        try {
            if (nombres[cant].trim().equalsIgnoreCase("ira")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("ira")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }

        try {
            if (nombres[cant].trim().equalsIgnoreCase("cui")) {
                if (nombres[cant - 1].trim().equalsIgnoreCase("cui")) {

                    //System.err.println("  " + nombres[cant].trim() + " " + nombres[cant + 1]);
                    b = true;

                }
            }
        } catch (Exception e) {
        }

        return b;
    }

    /**
     * Metodo que inicializa las variables de la clase;
     */
    public void intit() {
        APELLIDOM = "";
        APELLIDOP = "";
        NOMBRES = "";

    }
}

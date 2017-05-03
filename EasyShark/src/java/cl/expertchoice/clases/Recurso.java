package cl.expertchoice.clases;

public class Recurso {

    private int id;
    private String titulo;
    private String icono;
    private String url;

    public Recurso() {
    }

    public Recurso(int id, String titulo, String icono, String url) {
        this.id = id;
        this.titulo = titulo;
        this.icono = icono;
        this.url = url;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getIcono() {
        return icono;
    }

    public void setIcono(String icono) {
        this.icono = icono;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Recurso{" + "id=" + id + ", titulo=" + titulo + ", icono=" + icono + ", url=" + url + '}';
    }
}

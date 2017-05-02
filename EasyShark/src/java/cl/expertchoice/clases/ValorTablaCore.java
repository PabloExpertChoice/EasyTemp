package cl.expertchoice.clases;

import com.google.gson.JsonObject;
import java.math.BigInteger;

public class ValorTablaCore {

    private BigInteger id;
    private CabeceraTablaCore x;
    private CabeceraTablaCore y;
    private BigInteger idRiskTier;

    public ValorTablaCore() {
    }

    public ValorTablaCore(BigInteger id, CabeceraTablaCore x, CabeceraTablaCore y, BigInteger idRiskTier) {
        this.id = id;
        this.x = x;
        this.y = y;
        this.idRiskTier = idRiskTier;
    }

    public BigInteger getId() {
        return id;
    }

    public void setId(BigInteger id) {
        this.id = id;
    }

    public CabeceraTablaCore getX() {
        return x;
    }

    public void setX(CabeceraTablaCore x) {
        this.x = x;
    }

    public CabeceraTablaCore getY() {
        return y;
    }

    public void setY(CabeceraTablaCore y) {
        this.y = y;
    }

    public BigInteger getIdRiskTier() {
        return idRiskTier;
    }

    public void setIdRiskTier(BigInteger idRiskTier) {
        this.idRiskTier = idRiskTier;
    }

    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("id", this.id);
        json.add("x", this.x.toJson());
        json.add("y", this.y.toJson());
        json.addProperty("idRiskTier", this.idRiskTier);
        return json;
    }

}

package Beans;

import java.io.Serializable;

/**
 *
 * @author CHRIS MALEMA
 */
public class SymptomsBean implements Serializable
{
    private String symptomate;

    public String getSymptomate() {
        return symptomate;
    }

    public void setSymptomate(String symptomate) {
        this.symptomate = symptomate;
    }
}

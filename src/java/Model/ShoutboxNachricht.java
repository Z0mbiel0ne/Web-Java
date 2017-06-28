/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Marcel
 */
public class ShoutboxNachricht {
    
    private String datum;
    private String name;
    private String nachricht;

    public ShoutboxNachricht(String name, String datum, String msg) {
        this.name = name;
        this.nachricht = msg;
        this.datum = datum;
    }

    public String getDatum() {
        return datum;
    }

    public void setDatum(String datum) {
        this.datum = datum;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNachricht() {
        return nachricht;
    }

    public void setNachricht(String nachricht) {
        this.nachricht = nachricht;
    }
    
    public ShoutboxNachricht()
    {
    }
    
}

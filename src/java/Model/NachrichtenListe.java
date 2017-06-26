/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author Marcel
 */
public class NachrichtenListe {

    public ArrayList<Kundendaten> getListe() {
        return liste;
    }

    public void setListe(ArrayList<Kundendaten> liste) {
        this.liste = liste;
    }

    ArrayList<Kundendaten> liste = new ArrayList<Kundendaten>();
    public NachrichtenListe() {
        
    }
    
    public void add(Kundendaten kundendaten)
    {
        liste.add(kundendaten);
    }
}

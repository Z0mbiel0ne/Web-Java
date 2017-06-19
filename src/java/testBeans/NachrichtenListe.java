/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testBeans;

import java.util.ArrayList;
import testBeans.Kundendaten;

/**
 *
 * @author Marcel
 */
public class NachrichtenListe {

    ArrayList<Kundendaten> liste = new ArrayList<Kundendaten>();
    public NachrichtenListe() {
        
    }
    
    public void add(Kundendaten kundendaten)
    {
        liste.add(kundendaten);
    }
}

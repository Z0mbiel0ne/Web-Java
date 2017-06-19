/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testBeans;

/**
 *
 * @author Marcel
 */
public class Kundendaten {

      String vorname;
      String nachname;
      String datum;
      String grund;
      String text;
      int ID;
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public Kundendaten(String vorname, String nachname, String datum, String grund, String text) {
        this.vorname = vorname;
        this.nachname = nachname;
        this.datum = datum;
        this.grund = grund;
        this.text = text;
    }

    public Kundendaten() {
    }

    public String getVorname() {
        return vorname;
    }

    public void setVorname(String vorname) {
        System.out.println("testBeans.Kundendaten.setVorname()");
        this.vorname = vorname;
    }

    public String getNachname() {
        return nachname;
    }

    public void setNachname(String nachname) {
        this.nachname = nachname;
    }

    public String getDatum() {
        return datum;
    }

    public void setDatum(String datum) {
        this.datum = datum;
    }

    public String getGrund() {
        return grund;
    }

    public void setGrund(String grund) {
        this.grund = grund;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        System.out.println("testBeans.Kundendaten.setText()");
        this.text = text;
    }
}

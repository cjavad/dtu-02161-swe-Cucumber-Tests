package abstracts;

import java.util.List;

public class Projekt {
    public int id;
    public int year;
    public String navn;

    public ProjektLeder projektLeder = null;
    public List<Aktivitet> aktiviteter;
    public List<Medarbejder> medarbejdere;


    public String ID() {
        return this.year + "-" + String.format("%02d", this.id);
    }
}
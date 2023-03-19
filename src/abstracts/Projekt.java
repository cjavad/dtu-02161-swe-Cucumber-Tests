package abstracts;

abstract class Projekt {
    public int id;
    public int year;
    public String navn;

    public ProjektLeder projektLeder = null;
    public List<Aktivitet> aktiviteter;
    public List<Medarbejder> medarbejdere;

    public ID() {
        return this.year + '-' + String.format("%02d", this.id);
    }
}
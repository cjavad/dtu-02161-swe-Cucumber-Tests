package abstracts;

abstract class Aktivitet {
    public String navn;
    public UgeDato startTidspunkt;
    public UgeDato slutTidspunkt;

    public List<Medarbejder> anførteMedarbejdere;
    public List<AktivitetLog> aktivitetLog;

    public int budgetteretTid = 0;
}
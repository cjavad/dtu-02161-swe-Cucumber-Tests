package abstracts;
abstract class UgeDato {
    public int uge;
    public int year;

    public String toString() {
        return (this.uge + "-" + this.year);
    }
}
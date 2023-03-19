namespace abstracts;

abstract class UgeDato {
    public int uge;
    public int year;

    public toString() {
        return this.uge + '-' + this.year;
    }
}
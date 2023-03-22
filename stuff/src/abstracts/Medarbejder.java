package abstracts;

class Medarbejder {
    public String initials;


    public Medarbejder(String initials) {
        this.initials = initials;
    }

    @Override
    public int hashCode() {
        return initials.hashCode();
    }
}
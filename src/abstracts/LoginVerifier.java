package abstracts;

abstract class LoginVerifier {
    public static Medarbejder login(String initials) {
        return initials.equals("super") ? new SystemhusetAS : isValidInitials(initials) ? new Medarbejder(initials) : null;
    }

    public static boolean isValidInitials(String initials) {
        return true;
    }
}
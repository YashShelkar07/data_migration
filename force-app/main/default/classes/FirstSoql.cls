public class FirstSoql {
    public static void createAccList(){
        List<Account> accList = [Select id, name from Account];
    }
}
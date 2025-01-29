public class ContactUtility {
    public static void viewContacts(){
        List<Contact> listOfContacts = [Select firstname, lastname from contact limit 4];
        for(Contact con : listOfContacts){
            String FullName = 'First Name' + con.firstname +' '+ 'Last Name' + con.lastname;
            System.debug(FullName);
        }
    }
}
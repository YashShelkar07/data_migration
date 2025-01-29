public class MyFirstDemo {
    public static void CreateOppForAcc(){
        List<Account> accList = [select id, name from Account where createddate = this_week];
        List<Opportunity> oppToCreated = new List<Opportunity>();
        
        if(!accList.isEmpty()){
            for(Account acc : accList){
                Opportunity opp = new Opportunity();
                opp.Name = acc.Name;
                opp.CloseDate = System.today();
                opp.StageName = 'Prospecting';
                opp.AccountId = acc.id;
                oppToCreated.add(opp);
            }
        }
        if(!oppToCreated.isEmpty()){
            insert oppToCreated;
        }
    }
}
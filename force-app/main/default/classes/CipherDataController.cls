public class CipherDataController {
    @InvocableMethod
    public static void importCipherData() {
        deleteCiphers();
        
        insertCiphers();
    }
    
    private static void deleteCiphers() {
        delete [SELECT Id FROM Cipher__c];
    }
    
    private static void insertCiphers() {
        StaticResource cipherDataResource = [
            SELECT Id, Body
            FROM StaticResource
            WHERE Name = 'cipher_data'
        ];
        
        String ciphersJSON = cipherDataResource.body.toString();
        List<Cipher__c> ciphers = (List<Cipher__c>) JSON.deserialize(
            ciphersJSON,
            List<Cipher__c>.class
        );
        insert ciphers;   
    }

}
@IsTest
public class TestCipherDataController {
    @IsTest
    static void importCipherData() {
        Test.startTest();
          CipherDataController.importCipherData();
        Test.stopTest();

        Integer cipherNumber = [SELECT COUNT() FROM Cipher__c];

        Assert.isTrue(cipherNumber > 0, 'Expected ciphers were created.');
    }
}
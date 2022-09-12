/**
 * @description       : 
 * @author            : Nagnath Kalburge
 * @group             : 
 * @last modified on  : 09-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ContactController {
    @AuraEnabled (Cacheable=true)
    public static List<Contact> findContacts(String searchKey) {
        String key = '%' + searchKey + '%';
        return [
            SELECT Id, Name, Title, Phone, Email 
            from Contact
            WHERE Name LIKE :key limit 10
        ];

}
}
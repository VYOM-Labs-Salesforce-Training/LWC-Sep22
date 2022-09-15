/**
 * @ Author: Prajakata kulkarni
 * @ Create Time: 2022-09-15 13:06:00
 * @ Modified by: Your name
 * @ Modified time: 2022-09-15 13:08:43
 * @ Description:
 */


public with sharing class ContactController {
            @AuraEnabled(cacheable=true)
            public static List<Contact> getContactList() {
                return [
                    SELECT Id, Name, Title, Phone, Email, Picture__c
                    FROM Contact
                    WHERE Picture__c != null
                    WITH SECURITY_ENFORCED
                    LIMIT 10
                ];
            }
        }
    
    


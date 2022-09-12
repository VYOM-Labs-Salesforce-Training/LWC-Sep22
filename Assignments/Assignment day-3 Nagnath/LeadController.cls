/**
 * @description       : get lead details
 * @author            : Nagnath Kalburge
 * @group             : 
 * @last modified on  : 09-12-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class LeadController {
    @AuraEnabled(cacheable=true)
    public static List<Lead> getLeadList() {
        return [
            SELECT Id, Name, Title, Phone, Email, Country, Company
            FROM Lead
            LIMIT 10
        ];
    }
}
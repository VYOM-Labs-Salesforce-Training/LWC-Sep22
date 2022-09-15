/**
 * @ Author: Prajakata kulkarni
 * @ Create Time: 2022-09-15 16:53:32
 * @ Modified by: Your name
 * @ Modified time: 2022-09-15 20:02:48
 * @ Description:Create a search Opportunity functionality 

 */

public with sharing class Opportunitycompo {
    public Opportunitycompo() {
    }
        @AuraEnabled(cacheable=true)
        public static List<Opportunity> opplist(){
            return [SELECT id, name FROM Opportunity  LIMIT 10];
        }
    
    }


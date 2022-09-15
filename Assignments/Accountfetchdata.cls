/**
 * @ Author: Prajakta kulkarni
 * @ Create Time: 2022-09-15 13:06:00
 * @ Modified by: Your name
 * @ Modified time: 2022-09-15 13:07:53
 * @ Description:
 */

public with sharing class Accountobjectfetchdata {
    public Accountobjectfetchdata() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Account> acclist(){
        return [SELECT id, name FROM Account LIMIT 10];
    }

}

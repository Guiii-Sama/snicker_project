public with sharing class HomePageController {
    public HomePageController() {

    }

    public List<Product2> getProduct2List(){
        return[
            SELECT Id, Name, ISource__c, ImgSource__c, Base_Price__c  FROM Product2 WHERE ISource__c != '' AND Base_Price__c > 0 LIMIT 20
        ];
    }
}

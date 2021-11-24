trigger AccountAddressTrigger on Account (before insert, before update) {
    
        for(Account a : Trigger.new){
            if(a.ShippingAddress == null){
                
                if(a.ShippingCity == null){
                a.ShippingCity = a.BillingCity;     
                }
                
                if(a.ShippingCountry == null){
                    a.ShippingCountry = a.BillingCountry;
                }
                
                if(a.ShippingPostalCode == null){
                    a.ShippingPostalCode = a.BillingPostalCode;
                }
                
                if(a.ShippingStreet == null){
                    a.ShippingStreet = a.BillingStreet;
                }
                
                if(a.ShippingState == null){
                    a.ShippingState = a.BillingState;
                }
                
   			}

                if(a.BillingCity == null){
                    a.BillingCity = 'N/A';     
                    }
                    
                    if(a.BillingCountry == null){
                        a.BillingCountry = 'N/A';
                    }
                    
                    if(a.BillingPostalCode == null){
                        a.BillingPostalCode = 'N/A';
                    }
                    
                    if(a.BillingStreet == null){
                        a.BillingStreet = 'N/A';
                    }
                    
                    if(a.BillingState == null){
                        a.BillingState = 'N/A';
                    }


       }
}
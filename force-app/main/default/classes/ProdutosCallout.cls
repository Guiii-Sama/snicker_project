public class ProdutosCallout {
    
    public static void getProdutos(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://lobacademia-developer-edition.eu40.force.com/services/apexrest/veiculos');
        request.setMethod('GET');
        request.setHeader('password', '123');

        HttpResponse response = http.send(request);
        
        if(response.getStatusCode() == 200){
            Product2[] addList = (List<Product2>) JSON.deserialize(response.getBody(), List<Product2>.class);
            System.debug('products: ' + addList);
            System.debug('products: ' + addList.size());
            
            List<Product2> novosProdutos = new List<Product2>();
            
            for (Product2 product:addList){
                Product2 novoProd = new Product2( Name = product.Name, ProductCode = product.ProductCode);
                novosProdutos.add(novoProd);
            }
            
        }

        System.debug(response.toString());
        System.debug(response.getBody());
    }

}
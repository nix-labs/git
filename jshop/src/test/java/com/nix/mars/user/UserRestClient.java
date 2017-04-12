package com.nix.mars.user;
 
import org.springframework.web.client.RestTemplate;
 
public class UserRestClient {
 
    public static final String REST_SERVICE_URI = "http://localhost:8080/supercode";
     
     //GET 
    
    //@SuppressWarnings("unchecked")
    /*private static void listAllUsers(){
        System.out.println("Testing listAllUsers API-----------");
         
        RestTemplate restTemplate = new RestTemplate();
        List<LinkedHashMap<String, Object>> usersMap = restTemplate.getForObject(REST_SERVICE_URI+"/product/", List.class);
         
        if(usersMap!=null){
            for(LinkedHashMap<String, Object> map : usersMap){
                System.out.println("User : id="+map.get("productId")+", Name="+map.get("model"));
            }
        }else{
            System.out.println("No user exist----------");
        }
    }*/
     
     //GET 
    /*private static void getUser(){
        System.out.println("Testing getUser API----------");
        RestTemplate restTemplate = new RestTemplate();
        Product user = restTemplate.getForObject(REST_SERVICE_URI+"/product/30", Product.class);
        System.out.println("User : id="+user.getProductId() + ", Name="+user.getModel());
    }*/
     
    // POST 
    /*private static void createUser() {
        System.out.println("Testing create User API----------");
        RestTemplate restTemplate = new RestTemplate();
        Product product = new Product(50, "New Product");
        URI uri = restTemplate.postForLocation(REST_SERVICE_URI+"/product/", product, Product.class);
        System.out.println("Location : "+uri.toASCIIString());
    }*/
 
   //  PUT 
    /*private static void updateProduct() {
        System.out.println("Testing update User API----------");
        RestTemplate restTemplate = new RestTemplate();
        Product product  = new Product(28,"Updated Product1");
        restTemplate.put(REST_SERVICE_URI+"/product/30", product);
        //System.out.println(product);
    }*/
 
          //DELETE 
    private static void deleteUser() {
        System.out.println("Testing delete User API----------");
        RestTemplate restTemplate = new RestTemplate();
        restTemplate.delete(REST_SERVICE_URI+"/user/1");
    }
 
 
     //DELETE 
    /*private static void deleteAllUsers() {
        System.out.println("Testing all delete Users API----------");
        RestTemplate restTemplate = new RestTemplate();
        restTemplate.delete(REST_SERVICE_URI+"/user/");
    }*/
 
    public static void main(String args[]){
        //listAllUsers();
        //getUser();
        //updateProduct();
        //getUser();
        //createUser();
        //getUser();
        //listAllUsers();
        //updateUser();
        //listAllUsers();
    	deleteUser();
        //listAllUsers();
        //deleteAllUsers();
        //listAllUsers();
    }
}
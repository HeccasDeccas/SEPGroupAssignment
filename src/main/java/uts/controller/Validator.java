package uts.controller;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validator implements Serializable{
    private String emailPattern = "([a-zA-Z0-9._-]+)*(@)([a-z]+)(.)([a-z]{3})((([.])[a-z]{0,2})*)";   
    private String namePattern = "([A-Z][a-z]+[\\s])+[A-Z][a-z]*";    
    private String passwordPattern = "[a-z]{6,}[0-9]+";   
    private String IDPattern = "[0-9]{5,6}"; 
    private String quantityPattern = "[0-9]{1,}";
   
    public Validator(){}
    
    public boolean validate(String pattern, String input){
        Pattern regEx = Pattern.compile(pattern);
        Matcher match = regEx.matcher(input);
        return match.matches();
    }    
    public boolean checkEmpty(String email, String password){
        return  email.isEmpty() || password.isEmpty();
    }
    public boolean validateEmail(String email){                
        return validate(emailPattern,email);
    } 
    public boolean validateID(String ID){                
        return validate(IDPattern,ID);
    } 
    public boolean validateName(String name){        
        return validate(namePattern,name);
    }    
    public boolean validatePassword(String password){        
        return validate(passwordPattern,password);
    } 
    public boolean validateQuantity(String quantity){        
        return validate(quantityPattern,quantity);
    } 
}

package services;

import auth.Authentication;

public class AuthService {
    private final Authentication auth = new Authentication();
    public boolean canSignIN(String username, String password){
        try{
            if(auth.canSignIn(username, password)){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        return false;
    }
}

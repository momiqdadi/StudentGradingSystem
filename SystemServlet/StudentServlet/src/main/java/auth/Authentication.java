package auth;

import repository.FileSystem;

import java.util.List;

public class Authentication {
    private final FileSystem fileSystem = new FileSystem("data//Accounts.txt");
    public boolean canSignIn(String username, String password){
        if((username.isEmpty() || username == null) || (password.isEmpty() || password == null))
        {
            return false;
        }

        List<String> accounts = fileSystem.read();

        for(String account : accounts){
            String[] words = account.split(" ");
            String fileUser = words[0];
            String filePass = words[1];

            if((username.equals(fileUser)) && (password.equals(filePass))){
                return true;
            }
        }

        return false;
    }
}

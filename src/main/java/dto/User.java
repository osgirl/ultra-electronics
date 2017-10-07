package dto;

/**
 * Created by chathuri on 9/22/17.
 */
public class User {
    private String username;
    private String password;
    private String userRole;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserRole() {
        if(userRole==null) userRole = "USER";
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }
}

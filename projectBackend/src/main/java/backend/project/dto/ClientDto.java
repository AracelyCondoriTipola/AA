package backend.project.dto;
public class ClientDto {


    private int user_id;
    private int rol_id;
    private String username;
    private String name_rol;
    private String email;
    private String name;
    private String lasname;

    public ClientDto(int user_id, int rol_id, String username, String name_rol, String email, String name, String lasname) {
        this.user_id = user_id;
        this.rol_id = rol_id;
        this.username = username;
        this.name_rol = name_rol;
        this.email = email;
        this.name = name;
        this.lasname = lasname;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getName_rol() {
        return name_rol;
    }
    public void setName_rol(String name_rol) {
        this.name_rol = name_rol;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    


    @Override
    public String toString() {
        return "ClientDto{" +
                "user_id=" + user_id +
                ", rol_id=" + rol_id +
                ", username='" + username + '\'' +
                ", name_rol='" + name_rol + '\'' +
                ", email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", lasname='" + lasname + '\'' +
                '}';
    }
}

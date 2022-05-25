package backend.project.dto;
public class ClientDto {


    private int user_id;
    private int rol_id;
    private String username;
    private String name_rol;
    private String email;
    private String name;
    private String lasname;




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

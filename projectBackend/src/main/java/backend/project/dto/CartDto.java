package backend.project.dto;

public class CartDto {
    private String name;

    private String Lastname;
    private String product_name;
    private Double cost_product;
    private String image;

    public CartDto(String name, String lastname, String product_name, Double cost_product, String image) {
        this.name = name;
        Lastname = lastname;
        this.product_name = product_name;
        this.cost_product = cost_product;
        this.image = image;
    }

    

    @Override
    public String toString() {
        return "CartDto{" +
                "name='" + name + '\'' +
                ", Lastname='" + Lastname + '\'' +
                ", product_name='" + product_name + '\'' +
                ", cost_product=" + cost_product +
                ", image='" + image + '\'' +
                '}';
    }
}

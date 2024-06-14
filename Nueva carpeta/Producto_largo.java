package mientras.progra2024.src.mientras;
import java.util.ArrayList;
import java.util.List;
public class Producto_largo {
    private String nombre;
    private double precio;

    public Producto_largo(String nombre, double precio) {
        this.nombre = nombre;
        this.precio = precio;
    }

    public String getNombre() {
        return nombre;
    }

    public double getPrecio() {
        return precio;
    }
}
class Ma {
    public static void main(String[] args) {
        List<Producto> productos = new ArrayList<>();

        productos.add(new Producto("huevo", 2.5));
        productos.add(new Producto("walele", 1.2));
        productos.add(new Producto("api con pastel", 1.8));
        productos.add(new Producto("jugo de tamarindo", 3.0));
        productos.add(new Producto("huevos a la bonzaide", 2.0));

        Producto productoNombreMasLargo = encontrarProductoNombreMasLargo(productos);

        System.out.println("El producto con el nombre más largo es: " + productoNombreMasLargo.getNombre());
    }

    public static Producto encontrarProductoNombreMasLargo(List<Producto> productos) {
        Producto productoNombreMasLargo = null;
        int longitudMaxima = 0;

        for (Producto producto : productos) {
            if (producto.getNombre().length() > longitudMaxima) {
                longitudMaxima = producto.getNombre().length();
                productoNombreMasLargo = producto;
            }
        }
        return productoNombreMasLargo;
    }
}
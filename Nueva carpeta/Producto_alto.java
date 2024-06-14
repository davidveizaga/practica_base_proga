package mientras.progra2024.src.mientras;
import java.util.ArrayList;
import java.util.List;
public class Producto_alto {
    public static void main(String[] args) {
        List<Producto> productos = new ArrayList<>();

        productos.add(new Producto("coca-cola", 10.00));
        productos.add(new Producto("pan molde", 10.50));
        productos.add(new Producto("1k de pechuga de pollo", 24.50));
        productos.add(new Producto("huevo", 0.70));

        Producto productoMasCaro = encontrarProductoMasCaro(productos);

        System.out.println("El producto más caro es: " + productoMasCaro.getNombre() +
                " con un precio de Bs " + productoMasCaro.getPrecio());
    }

    public static Producto encontrarProductoMasCaro(List<Producto> productos) {
        Producto productoMasCaro = null;
        double precioMasAlto = Double.MIN_VALUE;

        for (Producto producto : productos) {
            if (producto.getPrecio() > precioMasAlto) {
                precioMasAlto = producto.getPrecio();
                productoMasCaro = producto;
            }
        }

        return productoMasCaro;
    }
}

package mientras.progra2024.src.mientras;
import java.util.Stack;
public class eliminar_pila_en_cadena {
    public static void main(String[] args) {
        Stack<String> pila = new Stack<>();

        pila.push("azul");
        pila.push("walele");
        pila.push("perro");
        pila.push("libro");
        pila.push("casa");

        String cadenaAEliminar = "libro";

        eliminarOcurrencias(pila, cadenaAEliminar);

        System.out.println("Pila después de eliminar todas las ocurrencias de \"" + cadenaAEliminar + "\":");
        while (!pila.isEmpty()) {
            System.out.println(pila.pop());
        }
    }
    public static void eliminarOcurrencias(Stack<String> pila, String cadenaAEliminar) {

        Stack<String> pilaTemporal = new Stack<>();

        while (!pila.isEmpty()) {
            String elemento = pila.pop();
            if (!elemento.equals(cadenaAEliminar)) {
                pilaTemporal.push(elemento);
            }
        }
        while (!pilaTemporal.isEmpty()) {
            pila.push(pilaTemporal.pop());
        }
    }
}

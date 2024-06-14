package mientras.progra2024.src.mientras;
import java.util.*;

public class pila_ordenada {
    public static void main(String[] args) {
        Stack<String> pila = new Stack<>();

        pila.push("puerta");
        pila.push("arbol");
        pila.push("cerdo");
        pila.push("uva");

        Collections.sort(pila);/*ordenar*/

        System.out.println("Pila ordenada: ");
        while (!pila.isEmpty()) {
            System.out.println(pila.pop());
        }
    }
}

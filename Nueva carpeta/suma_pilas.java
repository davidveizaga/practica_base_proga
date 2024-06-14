package mientras.progra2024.src.mientras;
import java.util.Stack;
public class suma_pilas {
    public static void main(String[] args) {
        Stack<Integer> pila = new Stack<>();

        pila.push(1);
        pila.push(2);
        pila.push(3);
        pila.push(4);

        int suma = 0;
        for (int elemento : pila) {
            suma += elemento;
        }

        System.out.println("La suma es: " + suma);
    }
}


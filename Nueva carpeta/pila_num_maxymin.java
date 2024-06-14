package mientras.progra2024.src.mientras;
import java.util.Stack;
public class pila_num_maxymin {
    public static void main(String[] args) {
        Stack<Integer> pila = new Stack<>();

        pila.push(52);
        pila.push(1044);
        pila.push(32);
        pila.push(83);
        pila.push(22);

        int maximo = Integer.MIN_VALUE;
        int minimo = Integer.MAX_VALUE;

        for (int numero : pila) {
            if (numero > maximo) {
                maximo = numero;
            }
            if (numero < minimo) {
                minimo = numero;
            }
        }

        System.out.println("Número máximo en la pila: " + maximo);
        System.out.println("Número mínimo en la pila: " + minimo);
    }
}

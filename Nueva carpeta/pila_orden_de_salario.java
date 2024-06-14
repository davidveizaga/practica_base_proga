package mientras.progra2024.src.mientras;
import java.util.Stack;

class Empleado {
    private String nombre;
    private double salario;

    public Empleado(String nombre, double salario) {
        this.nombre = nombre;
        this.salario = salario;
    }

    public String getNombre() {
        return nombre;
    }

    public double getSalario() {
        return salario;
    }
}
public class pila_orden_de_salario {
    public static void main(String[] args) {
        Stack<Empleado> pilaEmpleados = new Stack<>();

        pilaEmpleados.push(new Empleado("Juan", 2500));
        pilaEmpleados.push(new Empleado("Maria", 3000));
        pilaEmpleados.push(new Empleado("Pedro", 2000));
        pilaEmpleados.push(new Empleado("Ana", 3500));

        double salarioDado = 2500;

        System.out.println("Empleados con salario mayor que " + salarioDado + ":");

        for (Empleado empleado : pilaEmpleados) {
            if (empleado.getSalario() > salarioDado) {
                System.out.println(empleado.getNombre());
            }
        }
    }
}

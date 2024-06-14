package mientras.progra2024.src.mientras;
import java.util.ArrayList;
import java.util.List;
public class SalEmpleado {
    private String nombre;
    private double salario;

    public SalEmpleado(String nombre, double salario) {
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
class Mai {
    public static void main(String[] args) {
        List<SalEmpleado> empleados = new ArrayList<>();

        empleados.add(new SalEmpleado("Juan", 2250.0));
        empleados.add(new SalEmpleado("María", 4000.0));
        empleados.add(new SalEmpleado("Carlos", 1800.0));
        empleados.add(new SalEmpleado("Laura", 2800.0));

        double salarioPromedio = calcularSalarioPromedio(empleados);

        System.out.println("El salario promedio de los empleados es: $" + salarioPromedio);
    }

    public static double calcularSalarioPromedio(List<SalEmpleado> empleados) {
        if (empleados.isEmpty()) {
            return 0.0;
        }

        double sumaSalarios = 0.0;
        for (SalEmpleado empleado : empleados) {
            sumaSalarios += empleado.getSalario();
        }

        return sumaSalarios / empleados.size();
    }
}
package mientras.progra2024.src.mientras;
import java.util.ArrayList;
import java.util.List;
public class Estudiante {
    private String nombre;
    private double promedio;

    public Estudiante(String nombre, double promedio) {
        this.nombre = nombre;
        this.promedio = promedio;
    }

    public String getNombre() {
        return nombre;
    }

    public double getPromedio() {
        return promedio;
    }
}
class Resto {
    public static void main(String[] args) {
        List<Estudiante> estudiantes = new ArrayList<>();

        estudiantes.add(new Estudiante("Juan", 88.0));
        estudiantes.add(new Estudiante("Marta", 91.0));
        estudiantes.add(new Estudiante("Marco", 70.55));
        estudiantes.add(new Estudiante("Sofia", 91.75));

        Estudiante estudianteConPromedioMasAlto = encontrarEstudianteConPromedioMasAlto(estudiantes);

        System.out.println("El estudiante con el promedio más alto es: " + estudianteConPromedioMasAlto.getNombre() +
                " con " + estudianteConPromedioMasAlto.getPromedio());
    }

    public static Estudiante encontrarEstudianteConPromedioMasAlto(List<Estudiante> estudiantes) {
        Estudiante estudianteConPromedioMasAlto = null;
        double promedioMasAlto = Double.MIN_VALUE;

        for (Estudiante estudiante : estudiantes) {
            if (estudiante.getPromedio() > promedioMasAlto) {
                promedioMasAlto = estudiante.getPromedio();
                estudianteConPromedioMasAlto = estudiante;
            }
        }

        return estudianteConPromedioMasAlto;
    }
}
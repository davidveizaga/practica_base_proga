package mientras.progra2024.src.mientras;

public class Personas_alf_nombre implements Comparable<Personas_alf_nombre> {
    private String nombre;

    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Personas_alf_nombre(String nombre){
        this.nombre = nombre;
    }

    @Override
    public int compareTo(Personas_alf_nombre p) {
        return this.nombre.compareTo(p.getNombre());
    }

    @Override
    public String toString() {
        return "Personas_alf_nombre{" +
                "nombre='" + nombre + '\'' +
                '}';
    }
}

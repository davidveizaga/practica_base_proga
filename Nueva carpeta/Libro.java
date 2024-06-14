package mientras.progra2024.src.mientras;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
public class Libro {
    private String titulo;
    private String autor;

    public Libro(String titulo, String autor) {
        this.titulo = titulo;
        this.autor = autor;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getAutor() {
        return autor;
    }

    @Override
    public String toString() {
        return "Libro{" +
                "titulo='" + titulo + '\'' +
                ", autor='" + autor + '\'' +
                '}';
    }
}
class COD {
    public static void main(String[] args) {
        List<Libro> libros = new ArrayList<>();

        libros.add(new Libro("Harry Potter y la cámara secreta ", "J.K. Rowling"));
        libros.add(new Libro("Harry Potter y la piedra filosofal", "J.K. Rowling"));
        libros.add(new Libro("Harry Potter y el prisionero de Azkaban", "J.K. Rowling"));
        libros.add(new Libro("Harry Potter y el cáliz de fuego", "J.K. Rowling"));
        libros.add(new Libro("Harry Potter y la Orden del Fénix", "J.K. Rowling"));

        Collections.sort(libros, Comparator.comparing(Libro::getAutor).thenComparing(Libro::getTitulo));

        System.out.println("Lista de libros ordenada por autor y luego por título:");
        for (Libro libro : libros) {
            System.out.println(libro.getTitulo() + " - " + libro.getAutor());
        }
    }
}
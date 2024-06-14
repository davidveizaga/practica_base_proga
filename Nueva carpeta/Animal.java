package mientras.progra2024.src.mientras;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Animal {
    private String especie;

    public Animal(String especie) {
        this.especie = especie;
    }

    public String getEspecie() {
        return especie;
    }
}
class Main {
    public static void main(String[] args) {
        List<Animal> animales = new ArrayList<>();

        animales.add(new Animal("Perro"));
        animales.add(new Animal("Perro"));
        animales.add(new Animal("Gato"));
        animales.add(new Animal("Conejo"));
        animales.add(new Animal("Gato"));
        animales.add(new Animal("Conejo"));
        Map<String, Integer> conteoAnimales = contarAnimalesPorEspecie(animales);

        for (String especie : conteoAnimales.keySet()) {
            int cantidad = conteoAnimales.get(especie);
            System.out.println("Hay " + cantidad + " " + especie + "(s)");
        }
    }

    public static Map<String, Integer> contarAnimalesPorEspecie(List<Animal> animales) {
        Map<String, Integer> conteoAnimales = new HashMap<>();

        for (Animal animal : animales) {
            String especie = animal.getEspecie();
            conteoAnimales.put(especie, conteoAnimales.getOrDefault(especie, 0) + 1);
        }

        return conteoAnimales;
    }
}

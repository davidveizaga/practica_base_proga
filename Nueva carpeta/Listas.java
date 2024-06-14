package mientras.progra2024.src.mientras;

import java.util.ArrayList;
import java.util.Collections;

public class Listas {
    public static void main(String[] args) {
        Personas_alf_nombre P1=new Personas_alf_nombre("Juan");
        Personas_alf_nombre P2=new Personas_alf_nombre("Alejandro");
        Personas_alf_nombre P3=new Personas_alf_nombre("Mabel");
        ArrayList<Personas_alf_nombre> lista = new ArrayList<>();
        lista.add(P1);
        lista.add(P2);
        lista.add(P3);
        for (Personas_alf_nombre Personas_alf_nombre : lista){
            System.out.println(Personas_alf_nombre.toString());
        }
        Collections.sort(lista);
        for (Personas_alf_nombre Personas_alf_nombre : lista){
            System.out.println(Personas_alf_nombre.toString()                                                                                    );
        }
    }
}

package mientras.progra2024.src.mientras;
import java.util.ArrayList;
import java.util.List;

public class CuentaBancaria {
    private String titular;
    private double saldo;

    public CuentaBancaria(String titular, double saldo) {
        this.titular = titular;
        this.saldo = saldo;
    }

    public String getTitular() {
        return titular;
    }

    public double getSaldo() {
        return saldo;
    }
}
class SOL {
    public static void main(String[] args) {
        List<CuentaBancaria> cuentas = new ArrayList<>();

        cuentas.add(new CuentaBancaria("Jose", 100.0));
        cuentas.add(new CuentaBancaria("Marcos", 2987.07));
        cuentas.add(new CuentaBancaria("Sofia", 507.78));
        cuentas.add(new CuentaBancaria("Lupe", 10500.01));

        double sumaTotalSaldos = calcularSumaTotalSaldos(cuentas);

        System.out.println("La suma total de los saldos es: Bs " + sumaTotalSaldos);
    }

    public static double calcularSumaTotalSaldos(List<CuentaBancaria> cuentas) {
        double sumaTotalSaldos = 0.0;

        for (CuentaBancaria cuenta : cuentas) {
            sumaTotalSaldos += cuenta.getSaldo();
        }

        return sumaTotalSaldos;
    }
}
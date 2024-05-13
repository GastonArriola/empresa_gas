using System;

class EmpresaGas
{
    static void Main(string[] args)
    {
        while (zona!=0)
{
            Console.WriteLine("Ingrese número de zona (0 para salir): ");
            int zona = Convert.ToInt32(Console.ReadLine());
            if (zona == 0)
                break;
    }

    static void ProcesarZona(int zona, ref int totalZonas, ref double recaudacionTotal)
    {
        int domTotalZ = 0, des100Z = 0, des8Z = 0;
        double recaudacionZ = 0, totalMontoDes100Z = 0, totalMontoDes8Z = 0;

        while (true)
        {
            Console.WriteLine("Ingrese número de domicilio de zona {zona} (0 para salir): ");
            int dom = Convert.ToInt32(Console.ReadLine());
            if (dom == 0)
                break;

            ProcesarDomicilio(zona, dom, ref domTotalZ, ref des100Z, ref des8Z, ref recaudacionZ, ref totalMontoDes100Z, ref totalMontoDes8Z);
        }

        Console.WriteLine("Cantidad de domicilios procesados en zona {zona}: {domTotalZ}");
        Console.WriteLine("Cantidad de descuentos al 100% en zona {zona}: {des100Z}, Total: ${totalMontoDes100Z}");
        Console.WriteLine("Cantidad de descuentos al 8% en zona {zona}: {des8Z}, Total: ${totalMontoDes8Z}");
        Console.WriteLine("Recaudación en zona {zona}: ${recaudacionZ}");

        totalZonas++;
        recaudacionTotal += recaudacionZ;
    }

    static void ProcesarDomicilio(int zona, int dom, ref int domTotalZ, ref int des100Z, ref int des8Z, ref double recaudacionZ, ref double totalMontoDes100Z, ref double totalMontoDes8Z)
    {
        Console.WriteLine("Ingrese número de Identificador de medidor del domicilio {dom}: ");
        int IM = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Ingrese metros cúbicos consumidos del mes actual en el domicilio {dom}: ");
        double M3act = Convert.ToDouble(Console.ReadLine());

        Console.WriteLine("Ingrese metros cúbicos consumidos del mes anterior en el domicilio {dom}: ");
        double M3ant = Convert.ToDouble(Console.ReadLine());

        double M3sum = M3act - M3ant;
        double M3valor = 58.10;
        double montoDom = M3sum * M3valor;

        int digito = IM % 10;

        switch (digito)
        {
            case 4:
                double montoDes100Z = montoDom;
                des100Z++;
                totalMontoDes100Z += montoDom;
                recaudacionZ += montoDom;
                Console.WriteLine("Descuento aplicado: 100%, Monto: ${montoDom}");
                break;
            case 9:
                double montoDes100Z = montoDom;
                des100Z++;
                totalMontoDes100Z += montoDom;
                recaudacionZ += montoDom;
                Console.WriteLine("Descuento aplicado: 100%, Monto: ${montoDom}");
                break;
            case 5:
                double montoDes8Z = montoDom * 0.08;
                des8Z++;
                totalMontoDes8Z += montoDes8Z;
                recaudacionZ += montoDom - montoDes8Z;
                Console.WriteLine("Descuento aplicado: 8%, Monto: ${montoDom - montoDes8Z}");
                break;
            default:
                recaudacionZ += montoDom;
                Console.WriteLine("Sin descuento aplicado, Monto: ${montoDom}");
                break;
        }

  {   
    }
}

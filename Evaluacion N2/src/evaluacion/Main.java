package evaluacion;
import java.util.*;
public class Main {
/**
 * @author CristianE94
 * @param args
 */
	public static void main(String[] args) {
		
		// Variables de la clase que ejecuta
		double sumElectrodomestico=0;
        double sumLavadora=0;
        double sumTelevision=0;
		
		// Array de Electrodomestico con 10 posiciones
		Electrodomestico Electrodomestik[]=new Electrodomestico[10];
		
		        // Asignando posiciones de Array con objetos
		        Electrodomestik[0] = new Lavadora(300,200);
				Electrodomestik[1] = new Electrodomestico(200,300);
				Electrodomestik[2] = new Television(300,"Negro",'B',15,50,true);
				Electrodomestik[3] = new Lavadora(400,"Rojo",'C',50,31);
				Electrodomestik[4] = new Electrodomestico(100,10);
				Electrodomestik[5] = new Electrodomestico(200,"Azul",'F',20);
				Electrodomestik[6] = new Television(200,20);
				Electrodomestik[7] = new Lavadora(300,"Gris",'D',40,29);
				Electrodomestik[8] = new Lavadora();
				Electrodomestik[9] = new Electrodomestico(100,"Blanco",'A',10);
	
	// Recorrido del array
	for(int i=0;i<Electrodomestik.length;i++){		
				
		 if(Electrodomestik[i] instanceof Electrodomestico){
             sumElectrodomestico+=Electrodomestik[i].precioFinal();
         }
         if(Electrodomestik[i] instanceof Lavadora){
        	 sumLavadora+=Electrodomestik[i].precioFinal();
         }
         if(Electrodomestik[i] instanceof Television){
        	 sumTelevision+=Electrodomestik[i].precioFinal();
         }
     }
	
	     
	// Mostrar en pantalla los resultados
	/* En el ejercicio se pide que Electrodomestico muestre el resultado de la suma tanto de electrodomesticos
	 * como de lavadoras y television, por eso es que cree otra variable llamada sumTotalElectrodomesticos
	 */
	     double sumTotalElectrodomestico = sumElectrodomestico + sumLavadora + sumTelevision;
	
	     System.out.println("La suma del precio de los electrodomesticos es de "+sumTotalElectrodomestico);
         System.out.println("La suma del precio de las lavadoras es de "+sumLavadora);
         System.out.println("La suma del precio de las televisiones es de "+sumTelevision);
		
	}

}

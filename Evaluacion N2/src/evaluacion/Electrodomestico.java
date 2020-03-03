package evaluacion;

/**
 * 
 * @author CristianE94
 *
 */

public class Electrodomestico {
	
	// Creacion de atributos heredables (Precio base, color, consumo energetico y peso)
	// El precio era de 100000 pero no se aprecia con los demas precios en "€", por ende lo interprete como "euro = 1000"
	private static int preciob = 100; 
	private static String color = "Blanco";
	private static char consumoe = 'F';
	private static int peso = 5;
	
	// Constructor por defecto
	public Electrodomestico() {
		
	}

	// Constructor con precio y peso
	public Electrodomestico(int preciob, int peso) {
		Electrodomestico.preciob = preciob;
		Electrodomestico.peso = peso;
	}

	// Constructor con todos los atributos
	public Electrodomestico(int preciob, String color, char consumoe, int peso) {
		Electrodomestico.preciob = preciob;
		Electrodomestico.color = color;
		Electrodomestico.consumoe = consumoe;
		Electrodomestico.peso = peso;
	}

	// Getters para los atributos
	public int getPreciob() {
		return preciob;
	}

	public String getColor() {
		return color;
	}

	public char getConsumoe() {
		return consumoe;
	}

	public int getPeso() {
		return peso;
	}
	
	// Metodo para comprobar el consumo energetico, metodo if/else
	private void comprobarConsumoEnergetico(char letra){
		
		letra = consumoe;
		
		if(letra == 'A' || letra == 'B' || letra == 'C'  || letra == 'D' || letra == 'F') {
			
			System.out.println("Tipo de consumo energetico correcto");
			
		}else {
			
			System.out.println("Tipo de consumo energetico incorrecto, implementando tipo por defecto");
			letra = 'F'; // Estableciendo consumo energetico por defecto
			
		}
	}
	
	// Metodo para comprobar color correcto, metodo if/else
	private void comprobarColor(String color) {
		
		if(color == "Blanco" || color == "Negro" || color == "Rojo" || color == "Azul" || color == "Gris") {
			
			System.out.println("Color de producto correcto");
			
		}else {
			
			System.out.println("Color de producto incorrecto, implementando color por defecto");
			color = "Blanco"; // Estableciendo color de producto por defecto
			
		}
		
	}
	
	// Metodo de precio final
	public double precioFinal() {
		int consumop = 0;
	    int pesoe = 0;
		double pf = 0;
		if(consumoe == 'A') {
			
			consumop = 100;
			
		}else if(consumoe == 'B') {
			
			consumop = 80;
			
		}else if(consumoe == 'C') {
			
			consumop = 60;
			
		}else if(consumoe == 'D') {
			
			consumop = 50;
			
		}else if(consumoe == 'E') {
			
			consumop = 30;
			
		}else {
			
			consumop = 10;
			
		}
		
        if(peso <= 19) {
			
        	pesoe = 10;
			
		}else if(20 <= peso && peso <= 49) {
			
			pesoe = 50;
			
		}else if(50 <= peso && peso <= 79) {
			
			pesoe = 80;
			
		}else {
			
			pesoe = 100;
			
			
		}
		
		pf = preciob + consumop + pesoe;
		
		return pf;
	}
	

}

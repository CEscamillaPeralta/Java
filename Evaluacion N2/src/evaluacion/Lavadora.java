package evaluacion;

/**
 * 
 * @author CristianE94
 *
 */

public class Lavadora extends Electrodomestico {

	// Atributos
	private static int carga = 5;

	// constructor por defecto
	public Lavadora() {
		super();
	}

	// Constructor con precio y peso
	public Lavadora(int preciob, int peso) {
		super(preciob, peso);
		
	}

	// Constructor con todos los atributos de la clase padre incluyendo "carga"
	public Lavadora(int preciob, String color, char consumoe, int peso, int carga) {
		super(preciob, color, consumoe, peso);
		Lavadora.carga = carga;
	
	}

	// Getter para carga
	public int getCarga() {
		return carga;
	}
	
	// Metodo precio final para Lavadora
	public double precioFinal() {
		
		double pf = super.precioFinal();
		if (carga > 30) {
			
			pf = pf + 50;
			
		}
		return pf;
	}
	
	
	
}

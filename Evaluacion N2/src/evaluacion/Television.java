package evaluacion;

/**
 * 
 * @author CristianE94
 *
 */
public class Television extends Electrodomestico{

	// Atributos (Resolucion y Sintonizador TDT)
	private static int resolucion = 20;
	private static boolean stdt = false;
	
	// Constructor por defecto
	public Television() {
		super();
	}

	// Constructor con precio y peso
	public Television(int preciob, int peso) {
		super(preciob, peso);
		
	}

	// Constructor con todos los atributos incluyendo resolucion y stdt
	public Television(int preciob, String color, char consumoe, int peso, int resolucion, boolean stdt) {
		super(preciob, color, consumoe, peso);
		Television.resolucion = resolucion;
		Television.stdt = stdt;		
		
	}

	public int getResolucion() {
		return resolucion;
	}

	public boolean isStdt() {
		return stdt;
	}

	// Metodo precio final para Television
	
        public double precioFinal() {
		
		double pf = super.precioFinal();
		 if (resolucion > 40){
	            pf = pf + pf*0.3;
	        }
	        if (stdt){
	            pf = pf + 50;
	        }
	  
	        return pf;
	}
	
	
	
	
	
	
}

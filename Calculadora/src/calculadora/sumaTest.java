package calculadora;

import static org.junit.Assert.*;
import org.junit.Test;

public class sumaTest {

	@Test
	public void testSuma() {
		int resultado = suma.Suma(3, 4);
		int esperado = 7; // 3 + 4 = 7
		assertEquals(esperado, resultado);
		
	}

}

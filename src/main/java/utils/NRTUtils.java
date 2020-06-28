package utils;


public class NRTUtils {

	public static boolean cadContainsDigit(String cad) {
		for (int i = 0; i < cad.length(); i++) {
			char caracter = cad.charAt(i);
			if (Character.isDigit(caracter)) {
				return true;
			}
		}
		return false;
	}
	
	public static String cadToUpperCase(String cad) {
		return cad.toUpperCase();
	}
}

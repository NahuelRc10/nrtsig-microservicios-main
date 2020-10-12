package utils;

import java.util.List;

public class NRTUtils {

	/**
	 * Devuelve true si una cadena contiene algun caracter numerico,
	 * caso contrario retorna false
	 * @param cad
	 * @return
	 */
	public static boolean cadContainsDigit(String cad) {
		for (int i = 0; i < cad.length(); i++) {
			char caracter = cad.charAt(i);
			if (Character.isDigit(caracter)) {
				return true;
			}
		}
		return false;
	}
	
	/**
	 * Retorna la cadena que recibe como parametro en mayusculas
	 * @param cad
	 * @return
	 */
	public static String cadToUpperCase(String cad) {
		return cad.toUpperCase();
	}
	
	/**
	 * Retorna true si una cadena que recibe como parametros
	 * contiene alguna caracter no numerico
	 * @param cad
	 * @return
	 */
	public static boolean cadContainsLetters(String cad) {
		for (int i = 0; i < cad.length(); i++) {
			char caracter = cad.charAt(i);
			if (!Character.isDigit(caracter)) {
				return true;
			}
		}
		return false;
	}
	
	/**
	 * Retorna true cuando la lista que recibe como parametro
	 * es null o esta vacia
	 * @param list
	 * @return
	 */
    public static boolean isNullOrEmpty(List<?> list) {
        if (list == null || list.size() == 0) {
            return true;
        }
        return false;
    }

	/**
	 * Retorna true cuando una hora corresponde a un momento de dia
	 */
	public static boolean validaHora(String hora) {
		String[] a = hora.split(":");
		String fp = a[0].replace(" ", "");
		String sp = a[1].replace(" ", "");
		Integer firstPart = Integer.parseInt(fp);
		Integer secondPart = Integer.parseInt(sp);
		if ((firstPart >= 0 && firstPart <=24) && (secondPart >= 0 && secondPart <= 59)) {
			return true;
		}
		return false;
	}

}
package it.begear.corso.entity;

public class Sport extends Scarpa {
	
	private static String descrizione="sport";
	public Sport( String codice, Genere gender, Colore color, Misura numero, String brand,
			double costo, int disponibilita) {
		super( codice, gender, descrizione, color, numero, brand, costo, disponibilita);
		
	}


}

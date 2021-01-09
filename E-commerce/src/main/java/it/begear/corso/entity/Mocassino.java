package it.begear.corso.entity;

public class Mocassino extends Scarpa {

	private static String descrizione="mocassino";
	public Mocassino( String codice, Genere gender, Colore colore, Misura numero,
			String brand, double costo, int disponibilita) {
		super( codice, gender, descrizione, colore, numero, brand, costo, disponibilita);
		
	}

	
	
	

}

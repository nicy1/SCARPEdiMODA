package it.begear.corso.entity;

public class Sneaker extends Scarpa {
	
	private static String descrizione="sneaker";

	public Sneaker(String codice, Genere gender, Colore color, Misura numero, String brand,
			double costo, int disponibilita) {
		super(codice, gender, descrizione, color, numero, brand, costo, disponibilita);
		
	}


}

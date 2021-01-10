package it.begear.corso.entity;

public class Ciabatta extends Scarpa {

	private static String descrizione="ciabatta";

	public Ciabatta( String codice, Genere gender,Colore colore, Misura numero,
			String brand, double costo, int disponibilita) {
		
		super(codice, gender,descrizione, colore, numero, brand, costo, disponibilita);
		
	}

	
	



}

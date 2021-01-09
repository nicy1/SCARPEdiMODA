package it.begear.corso.entity;

public class Stivale extends Scarpa {
	
	private static String descrizione="stivale";
	public Stivale( String codice, Genere gender, Colore color, Misura numero, String brand,
			double costo, int disponibilita) {
		super( codice, gender, descrizione, color, numero, brand, costo, disponibilita);
		
	}





}

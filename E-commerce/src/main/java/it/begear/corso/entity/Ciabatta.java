package it.begear.corso.entity;

public class Ciabatta extends Scarpa {
	
	public Ciabatta() {}
	
	public Ciabatta(int id, String codice, Genere gender, String descrizione, Colore color, Misura numero, String brand,
			double costo, int disponibilita) {
		super(id, codice, gender, descrizione, color, numero, brand, costo, disponibilita);
		// TODO Auto-generated constructor stub
	}



	@Override
	public void getTacco() {
		System.out.println("le ciabatte non hanno tacco ma una piccola zeppa");
		
	}

}

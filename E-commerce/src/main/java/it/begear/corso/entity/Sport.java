package it.begear.corso.entity;

public class Sport extends Scarpa {
	
	public Sport() {}
	
	
	
	public Sport(int id, String codice, Genere gender, String descrizione, Colore color, Misura numero, String brand,
			double costo, int disponibilita) {
		super(id, codice, gender, descrizione, color, numero, brand, costo, disponibilita);
		// TODO Auto-generated constructor stub
	}



	@Override
	public void getTacco() {
		System.out.println("Le scarpe sportive non hanno tacco");
		
	}

}

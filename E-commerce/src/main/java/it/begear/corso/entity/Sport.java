package it.begear.corso.entity;

public class Sport extends Scarpa {
	
	public Sport() {}
	public Sport(int id, Genere gender, String descrizione, Colore color, Misura numero, String brand,
			double costo) {
		super(id, gender, descrizione, color, numero, brand, costo);
	}

	@Override
	public void getTacco() {
		System.out.println("Le scarpe sportive non hanno tacco");
		
	}

}

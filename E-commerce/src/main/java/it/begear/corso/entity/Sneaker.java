package it.begear.corso.entity;

public class Sneaker extends Scarpa {
	
	public Sneaker() {}
	public Sneaker(int id, Genere gender, String descrizione, Colore color, Misura numero, String brand,
			double costo) {
		super(id, gender, descrizione, color, numero, brand, costo);
		
	}
	

	@Override
	public void getTacco() {
		System.out.println("Le Sneaker non hanno il tacco");
		
	}

}

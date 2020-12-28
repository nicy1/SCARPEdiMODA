package it.begear.corso.entity;

public class Stivale extends Scarpa {
	private int tacco;
	public Stivale() {}
	
	

	public Stivale(int id, String codice, Genere gender, String descrizione, Colore color, Misura numero, String brand,
			double costo, int disponibilita) {
		super(id, codice, gender, descrizione, color, numero, brand, costo, disponibilita);
		// TODO Auto-generated constructor stub
	}



	public void setTacco(int tacco) {
		this.tacco = tacco;
	}

	@Override
	public void getTacco() {
		System.out.println("Questo stivale ha tacco da "+tacco);
		
	}

}

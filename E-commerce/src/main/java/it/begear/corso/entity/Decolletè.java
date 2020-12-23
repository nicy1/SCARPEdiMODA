package it.begear.corso.entity;

public class Decolletè extends Scarpa {
	private int tacco;
	public Decolletè() {}
	
	public Decolletè(int id, Genere gender, String descrizione, Colore color, Misura numero, String brand, double costo) {
		super(id, gender, descrizione, color, numero, brand, costo);
	}	
	
	public void setTacco(int tacco) {
		this.tacco = tacco;
	}
	
	@Override
	public void getTacco() {
		System.out.println("Questo decolletè ha tacco da "+tacco);
		
	}

}

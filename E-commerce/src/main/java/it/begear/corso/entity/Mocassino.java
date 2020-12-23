package it.begear.corso.entity;

public class Mocassino extends Scarpa {

	public Mocassino() {}
	
	public Mocassino( int id , Genere gender , String descrizione , Colore color , Misura numero , String brand , 
			double costo) {
		
		super (id , gender , descrizione , color , numero , brand , costo);
	}
	
	
	@Override
	public void getTacco() {
		System.out.println("I mocassini non hanno tacco");
	}

}

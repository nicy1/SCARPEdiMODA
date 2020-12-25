package it.begear.corso.entity;

import java.util.HashMap;
import java.util.Map;


public class Carrello {
	private int idUtente;
	private Map<Scarpa, Integer> carrello  = new HashMap<Scarpa, Integer>();
	private static Carrello istanza;
	public Carrello() {}

	public Map<Scarpa, Integer> getCarrello() {
		return carrello;
	}

	public void setCarrello(Map<Scarpa, Integer> carrello) {
		this.carrello = carrello;
	}

	public void	acquista(){

		Ordine o = new Ordine(this.getCarrello(),this.getIdUtente());
		istanza.getCarrello().clear();//per svuotare il carrello
		
	}

	public static Carrello getIstance() {
		if(istanza==null) {
			istanza= new Carrello();
		}
		return istanza;
	}


	public int getIdUtente() {
		return idUtente;
	}


	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}

	



}

package it.begear.corso.entity;

import java.util.HashMap;
import java.util.Map;


public class Carrello {
	private int idUtente;
	private Map<Integer, Scarpa> carrello  = new HashMap<Integer, Scarpa>();
	
	public Carrello(int idUtente) {
		this.idUtente = idUtente;
	}

	public Map<Integer, Scarpa> getCarrello() {
		return carrello;
	}

	public void setCarrello(Map<Integer, Scarpa> carrello) {
		this.carrello = carrello;
	}

	public Ordine acquista(){
		Ordine ordine = new Ordine(carrello, idUtente);
		carrello.clear();   //per svuotare il carrello
		return ordine;
	}
	
	public void addScarpa(Scarpa scarpa) {
		carrello.put(scarpa.getId(), scarpa);
	}
	
	
	public void removeScarpa(Scarpa scarpa) {
		carrello.remove(scarpa.getId());
	}


	public int getIdUtente() {
		return idUtente;
	}


	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}

	



}

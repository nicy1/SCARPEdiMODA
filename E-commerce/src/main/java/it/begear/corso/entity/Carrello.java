package it.begear.corso.entity;

import java.util.HashMap;
import java.util.Map;


public class Carrello {
	private int idUtente;
	private Map<Integer, Integer> carrello  = new HashMap<Integer, Integer>();
	
	public Carrello(int idUtente) {
		this.idUtente = idUtente;
	}

	public Map<Integer, Integer> getCarrello() {
		return carrello;
	}

	public void setCarrello(Map<Integer, Integer> carrello) {
		this.carrello = carrello;
	}

	public Ordine acquista() {
		Ordine ordine = new Ordine(carrello, idUtente);
		carrello.clear();              //per svuotare il carrello
		return ordine;
	}
	
	public void addScarpa(Integer scarpaId, Integer quantita) {
		carrello.put(scarpaId, quantita);
	}
	
	
	public void removeScarpa(Integer scarpaId) {
		carrello.remove(scarpaId);
	}


	public int getIdUtente() {
		return idUtente;
	}


	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}

}


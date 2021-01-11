package it.begear.corso.entity;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import it.begear.corso.dao.DAOordineImpl;
import it.begear.corso.dao.DAOscarpaImpl;


public class Carrello {
	private int idUtente;
	private double prezzo;
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
	
	public double getPrezzo() {
		return prezzo;
	}

	public Ordine acquista() {
		Ordine ordine = new Ordine(carrello, idUtente);
		carrello.clear();                   // per svuotare il carrello
		return ordine;
	}
	
	public void addScarpa(Scarpa scarpa, Integer quantita) {
		carrello.put(scarpa.getId(), quantita);
		prezzo += scarpa.getCosto() * quantita;
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


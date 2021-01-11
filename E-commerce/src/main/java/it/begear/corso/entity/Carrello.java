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
	private Map<Integer, Integer> scarpe  = new HashMap<Integer, Integer>();
	
	public Carrello(int idUtente) {
		this.idUtente = idUtente;
	}

	public Map<Integer, Integer> getScarpe() {
		return scarpe;
	}

	public void setCarrello(Map<Integer, Integer> carrello) {
		this.scarpe = carrello;
	}
	
	public double getPrezzo() {
		return prezzo;
	}

	public Ordine acquista() {
		Ordine ordine = new Ordine(scarpe, idUtente);
		scarpe.clear();                   // per svuotare il carrello
		return ordine;
	}
	
	public void addScarpa(Scarpa scarpa, Integer quantita) {
		scarpe.put(scarpa.getId(), quantita);
		prezzo += scarpa.getCosto() * quantita;
	}
	
	
	public void removeScarpa(Integer scarpaId) {
		scarpe.remove(scarpaId);
	}


	public int getIdUtente() {
		return idUtente;
	}


	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}

}


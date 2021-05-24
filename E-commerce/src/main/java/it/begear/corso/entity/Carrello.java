package it.begear.corso.entity;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
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
		Date date = new Date(); 
        DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.MEDIUM, Locale.ITALY);
        String dataStringa = dateFormat.format(date);     
		Ordine ordine = new Ordine(scarpe, idUtente,dataStringa);
		scarpe.clear();                   // per svuotare il carrello
		return ordine;
	}
	
	public void addScarpa(Scarpa scarpa, String check) {
		int qta = 1;
		if (scarpe.containsKey(scarpa.getId())) {
			int vecchia_qta = scarpe.get(scarpa.getId());
			double tmp = vecchia_qta * scarpa.getCosto();
			prezzo -= tmp;
			if (check == null) {	
			    qta += vecchia_qta;
			}
		}		
		prezzo += scarpa.getCosto() * qta;
		scarpe.put(scarpa.getId(), qta);
	}
	
	public void updateCarrello(Scarpa scarpa, Integer quantita) {	
		double tmp = scarpe.get(scarpa.getId()) * scarpa.getCosto();
		prezzo -= tmp;
		prezzo += scarpa.getCosto() * quantita;
		scarpe.put(scarpa.getId(), quantita);
	}
	
	
	public void removeScarpa(Scarpa scarpa) {
		double tmp = scarpe.get(scarpa.getId()) * scarpa.getCosto();
		prezzo -= tmp;
		scarpe.remove(scarpa.getId());
	}


	public int getIdUtente() {
		return idUtente;
	}


	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}

	public Integer getQuantita(Integer id) {
		
		return scarpe.get(id);
	}

}


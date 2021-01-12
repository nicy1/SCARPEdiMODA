package it.begear.corso.entity;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import it.begear.corso.dao.DAOscarpaImpl;

@Entity
@Table(name = "ordini")
public class Ordine {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_ordini")
	private int id;
	
	@Column(name = "id_utenti")
	private int idUtente;
	
	@Column(name = "prezzo")
	private double prezzo;
	
	@Column(name = "data")
	private String data;
	
    
	@Transient
	private Map<Integer, Integer> scarpaList;
	
	
	public Ordine() {}
	
	public Ordine(Map<Integer, Integer> carrello, int id_Utente, String data) {
		setLista(carrello);
		setIdUtente(id_Utente);	
		setPrezzo();
		setData(data);
	}


	public int getId() {
		return id;
	}

	public int getIdUtente() {
		return idUtente;
	}


	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}
	
	public double getPrezzo() {
		return prezzo;
	}


	public void setPrezzo() {
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOscarpaImpl daoscarpa = context.getBean(DAOscarpaImpl.class);
		for(Entry<Integer, Integer> entry : scarpaList.entrySet()) {
			Scarpa scarpa = daoscarpa.findByID(entry.getKey());
			prezzo += scarpa.getCosto() * entry.getValue();
		}
	}


	public Map<Integer, Integer> getScarpaList() {
		return scarpaList;
	}

	public void setLista(Map<Integer, Integer> carrello) {
		this.scarpaList = carrello;
	}
	

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	@Override
	public String toString() {
<<<<<<< HEAD
		return "Ordine [id=" + id + ", prezzo=" + prezzo + ", data=" + data + "]";
=======
		return "Ordine [id=" + id + ", prezzo=" + prezzo + "]";
>>>>>>> branch 'master' of https://github.com/irenerosaria/ScarpeDiModa.git
	}


	
}

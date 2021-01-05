package it.begear.corso.entity;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ordini")
public class Ordine {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_ordini")
	private int id;
	
	@Column(name = "id_utenti")
	private int idUtente;
	
	@Column(name = "id_scarpa")
	private double id_scarpa;
	
	@Column(name = "prezzo")
	private double prezzo;

	private Map<Integer, Scarpa> scarpaList;
	
	
	public Ordine(Map<Integer, Scarpa> carrello, int id_Utente) {
		setLista(carrello);
		setIdUtente(id_Utente);	
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
		for(Scarpa scarpa : scarpaList.values()) {
			prezzo += scarpa.getCosto();
		}
	}


	public Map<Integer, Scarpa> getScarpaList() {
		return scarpaList;
	}

	public void setLista(Map<Integer, Scarpa> carrello) {
		this.scarpaList = carrello;
	}


	@Override
	public String toString() {
		return "Ordine [id=" + id + ", idUtente=" + idUtente + ", id_scarpa=" + id_scarpa + ", prezzo=" + prezzo + "]";
	}
	
}

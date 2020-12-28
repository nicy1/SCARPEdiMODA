package it.begear.corso.entity;

import java.util.HashMap;
import java.util.Map;

public class Ordine {
	private int id;
	private Map<Scarpa, Integer> lista;
	private int idUtente;
	
	public Ordine(Map<Scarpa, Integer> map,int id_Utente) {
		setLista(map);
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


	public Map<Scarpa, Integer> getLista() {
		return lista;
	}

	public void setLista(Map<Scarpa, Integer> lista) {
		this.lista = lista;
	}


	@Override
	public String toString() {
		return "Ordine [id=" + id + ", lista=" + lista + ", idUtente=" + idUtente + "]";
	}

	
	
}

package it.begear.corso.dao;

import java.util.List;

import it.begear.corso.entity.Utente;

public interface DAOutente {
	public void create(Utente a);
	public List<Utente> read();
	public void update(Utente a, int id);
	public void delete(Utente a,int id);
	public Utente findByID(Integer id);
	public Utente findByCredentials(String email, String password);
}

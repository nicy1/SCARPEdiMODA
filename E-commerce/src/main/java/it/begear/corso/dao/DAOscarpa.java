package it.begear.corso.dao;

import java.util.List;
import it.begear.corso.entity.Scarpa;

public interface DAOscarpa {
	public void create(Scarpa a);
	public List<Scarpa> read();
	public void update(Scarpa a, int id);
	public void delete(Integer id);
	public Scarpa findByID(Integer id);
	
} 

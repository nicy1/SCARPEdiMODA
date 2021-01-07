package it.begear.corso.dao;

import java.util.List;

import it.begear.corso.entity.Ordine;

public interface DAOordine {
   public void create(Ordine a);
   public List <Ordine> read();
   public void delete(Integer id);
   public Ordine findByID(Integer id);
   public List<Ordine> getUserOrders(int idUtente);
}

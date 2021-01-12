package it.begear.corso.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import it.begear.corso.entity.Ordine;
import it.begear.corso.entity.Scarpa;

public class DAOordineImpl implements DAOordine {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void create(Ordine a) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(a);
		tx.commit();
		session.close();
		System.out.println("Create successful!");
	}

	@Override
	public List<Ordine> read() {
		Session session = this.sessionFactory.openSession();
		List<Ordine> anList = session.createQuery("from Ordine").list();
		session.close();
		return anList;
	}
	

	@Override
	public void delete(Integer id) {
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		Ordine ordine = findByID(id);
		session.delete(ordine);
		session.getTransaction().commit();
		session.close();
		System.out.println("Delete successful!");
	}
	
	@Override
	public Ordine findByID(Integer id) {
		Session session = getSessionFactory().openSession();
		Ordine ordine = (Ordine) session.load(Ordine.class, id);
		session.close();
		System.out.println("Ordine trovato");
		return ordine;
	}
	
	public List<Ordine> getUserOrders(int idUtente) {
		List<Ordine> result = new ArrayList<Ordine>();
		List<Ordine> ordini = read();
		for(Ordine ordine : ordini) {
			if (ordine.getIdUtente() == idUtente) {
				result.add(ordine);
			}
		}
		return result;
	}
	
	

}
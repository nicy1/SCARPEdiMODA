package it.begear.corso.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import it.begear.corso.entity.Scarpa;
import it.begear.corso.entity.Utente;

public class DAOutenteImpl implements DAOutente {
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void create(Utente a) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(a);
		tx.commit();
		session.close();
		
	}

	@Override
	public List<Utente> read() {
		Session session = this.sessionFactory.openSession();
		List<Utente> anList = session.createQuery("from Utente").list();
		session.close();
		return anList;
	}

	@Override
	public void update(Utente a, int id) {
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		Utente user = (Utente) session.load(Utente.class, a.getId());
		user.setNome(a.getNome());
		user.setCognome(a.getCognome());
		user.setEmail(a.getEmail());
		user.setPassword(a.getPassword());
		user.setIndirizzo(a.getIndirizzo());
		session.getTransaction().commit();
		session.close();
		System.out.println("Update successful!");
		
	}

	@Override
	public void delete(Utente a, int id) {
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		Utente user = findByID(id);
		session.delete(user);
		session.getTransaction().commit();
		session.close();
		System.out.println("Delete successful!!!");
	}

	@Override
	public Utente findByID(Integer id) {
		Session session = getSessionFactory().openSession();
		Utente user = (Utente) session.load(Utente.class, id);
		session.close();
		System.out.println("Utente trovato!");
		return user;
	}

	@Override
	public Utente findByCredentials(String email, String password) {
		Utente utente = null;
		List<Utente> utenteList = read();
		for(Utente ut : utenteList) {
			if(ut.getEmail().equals(email) && ut.getPassword().equals(password)) {
			   utente = ut;
			}
		}
		return utente;
	}

}

package it.begear.corso.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import it.begear.corso.entity.Genere;
import it.begear.corso.entity.Scarpa;

public class DAOscarpaImpl implements DAOscarpa {
	
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void create(Scarpa a) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(a);
		tx.commit();
		session.close();
		System.out.println("Create successful!");
	}

	@Override
	public List<Scarpa> read() {
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		List<Scarpa> anList = session.createQuery("from Scarpa").list();
		session.getTransaction().commit();
		session.close();
		return anList;
	}

	@Override
	public void update(Scarpa a, int id) {
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		Scarpa shoe = (Scarpa) session.load(Scarpa.class, a.getId());
		shoe.setId(a.getId());
		shoe.setGender(a.getGender());
		shoe.setDescrizione(a.getDescrizione());
		shoe.setColor(a.getColor());
		shoe.setNumero(a.getNumero());
		shoe.setBrand(a.getBrand());
		shoe.setCosto(a.getCosto());
		session.getTransaction().commit();
		session.close();
		System.out.println("Update successful!");
		
	}

	@Override
	public void delete(Integer id) {
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		Scarpa scarpa = findByID(id);
		session.delete(scarpa);
		session.getTransaction().commit();
		session.close();
		System.out.println("Delete successful!");
	}
	
	@Override
	public Scarpa findByID(Integer id) {
		Session session = getSessionFactory().openSession();
		Scarpa scarpa = (Scarpa) session.load(Scarpa.class, id);
		session.close();
		System.out.println("Scarpa trovata!");
		return scarpa;
	}
	
	
	@Override
	public Scarpa findByCode(String code) {
		Scarpa scarpa = null;
		List<Scarpa> scarpaList = read();
		for(Scarpa sc : scarpaList) {
			if(sc.getCodice().equals(code)) {
			   scarpa = sc;
			   break;
			}
		}
		return scarpa;
	}
	
	
	@Override
	public List<Scarpa> findByKeyword(String keyword) {
		List<Scarpa> scarpe = new ArrayList<Scarpa>();
		List<Scarpa> scarpaList = read();
		for(Scarpa scarpa : scarpaList) {
			if(scarpa.getDescrizione().contains(keyword)) {
			   scarpe.add(scarpa);
			}
		}
		return scarpe;
	}
	
	
	public List<Scarpa> findByGenere(Genere genereScarpa) {
		List<Scarpa> scarpe = new ArrayList<Scarpa>();
		List<Scarpa> scarpaList = read();
		for(Scarpa scarpa : scarpaList) {
			if(scarpa.getGender().equals(genereScarpa)) {
			   scarpe.add(scarpa);
			}
		}
		return scarpe;
	}

}

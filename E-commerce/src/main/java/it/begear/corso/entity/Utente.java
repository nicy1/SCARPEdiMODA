package it.begear.corso.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "utenti")
public class Utente {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_utenti")
	  private int id;
	
	@Column(name = "nome")
      private String nome;
	
	@Column(name = "cognome")
      private String cognome;
	
	@Column(name = "email")
      private String email;
	
	@Column(name = "password")
      private String password;
	
	@Column(name = "indirizzo")
      private String indirizzo;
      
      private Carrello c;
      
	public Utente( String nome, String cognome, String email, String password, String indirizzo) {
		super();
		
		setNome(nome);
		setCognome(cognome);
		setEmail(email);
		setPassword(password);
		setIndirizzo(indirizzo);
		c = Carrello.getIstance();
		c.setIdUtente(getId());
	}
	
	
	public int getId() {
		return id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}


	public Carrello getC() {
		return c;
	}


	public void setC(Carrello c) {
		this.c = c;
	}
      
}

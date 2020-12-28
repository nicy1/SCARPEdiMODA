package it.begear.corso.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "scarpe")
public abstract class Scarpa {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_scarpe")
	private int id;

	@Column(name = "codice")
	private String codice;

	@Column(name = "genere")
	private Genere gender;

	@Column(name = "descrizione")
	private String descrizione;

	@Column(name = "colore")
	private Colore colore;

	@Column(name = "numero")
	private Misura numero; 

	@Column(name = "brand")
	private String brand;

	@Column(name = "costo")
	private double costo;

	@Column(name = "disponibilita")
	private int disponibilita;

	public Scarpa() {}

	public Scarpa(int id,String codice, Genere gender, String descrizione, Colore color, Misura numero, String brand, double costo, int disponibilita) {
		super();
		setId(id);
		setCodice(codice);
		setGender(gender);
		setDescrizione(descrizione);
		setColor(color);
		setNumero(numero);
		setBrand(brand);
		setCosto(costo);
		setDisponibilita(disponibilita);
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}

	public Genere getGender() {
		return gender;
	}



	public void setGender(Genere gender) {
		this.gender = gender;
	}



	public Colore getColor() {
		return colore;
	}



	public void setColor(Colore color) {
		this.colore = color;
	}



	public Misura getNumero() {
		return numero;
	}



	public void setNumero(Misura numero) {
		this.numero = numero;
	}



	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getBrand() {
		return brand;
	}



	public void setBrand(String brand) {
		this.brand = brand;
	}



	public double getCosto() {
		return costo;
	}



	public void setCosto(double costo) {
		this.costo = costo;
	}



	public String getCodice() {
		return codice;
	}

	public void setCodice(String codice) {
		this.codice = codice;
	}

	public int getDisponibilita() {
		return disponibilita;
	}

	public void setDisponibilita(int disponibilita) {
		this.disponibilita = disponibilita;
	}

	@Override
	public String toString() {
		return "Scarpa [id=" + id + ", gender=" + gender + ", descrizione=" + descrizione + ", color=" + colore
				+ ", numero=" + numero + ", brand=" + brand + ", costo=" + costo + "]";
	}



	public abstract void getTacco();
}

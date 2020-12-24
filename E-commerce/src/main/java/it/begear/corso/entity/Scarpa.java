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
	
	@Column(name = "genere")
    private Genere gender;
	
	@Column(name = "descrizione")
    private String descrizione;
	
	@Column(name = "colore")
    private Colore color;
	
	@Column(name = "numero")
    private Misura numero; 
	
	@Column(name = "brand")
    private String brand;
	
	@Column(name = "costo")
    private double costo;
    
    public Scarpa() {}
    
	public Scarpa(int id, Genere gender, String descrizione, Colore color, Misura numero, String brand, double costo) {
		super();
		this.id = id;
		this.gender = gender;
		this.descrizione = descrizione;
		this.color = color;
		this.numero = numero;
		this.brand = brand;
		this.costo = costo;
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
		return color;
	}



	public void setColor(Colore color) {
		this.color = color;
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



	@Override
	public String toString() {
		return "Scarpa [id=" + id + ", gender=" + gender + ", descrizione=" + descrizione + ", color=" + color
				+ ", numero=" + numero + ", brand=" + brand + ", costo=" + costo + "]";
	}



	public abstract void getTacco();
}

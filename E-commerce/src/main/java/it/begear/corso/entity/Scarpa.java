package it.begear.corso.entity;

public abstract class Scarpa {
	private int id;
    private Genere gender;
    private String descrizione;
    private Colore color;
    private Misura numero; 
    private String brand;
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

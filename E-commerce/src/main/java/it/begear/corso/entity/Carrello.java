package it.begear.corso.entity;

import java.util.HashMap;
import java.util.Map;


public class Carrello {
	private Map<Scarpa, Integer> carrello  = new HashMap<Scarpa, Integer>();
	private static Carrello istanza;
	private Carrello() {}

	public Map<Scarpa, Integer> getCarrello() {
		return carrello;
	}

	public void setCarrello(Map<Scarpa, Integer> carrello) {
		this.carrello = carrello;
	}

	public void	acquista(){
		Ordine o = new Ordine(this.getCarrello(),idUtente);
		//svuotacarrello()
	}

	public static Carrello getIstance() {
		if(istanza==null) {
			istanza= new Carrello();
		}
		return istanza;
	}





}

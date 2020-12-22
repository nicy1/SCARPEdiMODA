package it.begear.corso.entity;

public class Negozio {
	
		
	    public Negozio(){}
	    
	    public Scarpa riempiMagazzino (String tipo){
	        Scarpa shoe = null;
	        switch (tipo){
	            case "Stivale":
	                shoe = new Stivale();
	                break;
	            case "Condominio":
	                shoe = new Ciabatta();
	                break;
	        }
	        return shoe;
	    }
	
}

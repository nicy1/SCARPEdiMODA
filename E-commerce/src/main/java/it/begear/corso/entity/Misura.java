package it.begear.corso.entity;

public enum Misura {
 A(28),
 B(29),
 C(30),
 D(31),
 E(32),
 F(33);
	
	 private int numVal;

	    Misura(int numVal) {
	        this.numVal = numVal;
	    }

	    public int getNumVal() {
	        return numVal;
	    }
}

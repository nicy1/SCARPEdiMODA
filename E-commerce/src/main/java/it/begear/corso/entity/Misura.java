package it.begear.corso.entity;

public enum Misura {



	A(28),
	B(29),
	C(30),
	D(31),
	E(32),
	F(33),
	G(34),
	H(35),
	I(36),
	L(37),
	M(38),
	N(39),
	O(40),
	P(41),
	Q(42),
	R(43),
	S(44);

	private final int num;

	Misura(int n){
		this.num= n;
	}

	public int getNum() {
		return num;
	}



}

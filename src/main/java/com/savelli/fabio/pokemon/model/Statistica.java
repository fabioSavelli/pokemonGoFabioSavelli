package com.savelli.fabio.pokemon.model;

import java.io.Serializable;

public class Statistica implements Serializable{

	private static final long serialVersionUID = 3388469717845108926L;

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	private int ps;
	private int attacco;
	private int difesa;
	private int plMassimi;
	private int tassoCattura;
	private int tassoFuga;

	public int getPs() {
		return ps;
	}
	public void setPs(int ps) {
		this.ps = ps;
	}
	public int getAttacco() {
		return attacco;
	}
	public void setAttacco(int attacco) {
		this.attacco = attacco;
	}
	public int getDifesa() {
		return difesa;
	}
	public void setDifesa(int difesa) {
		this.difesa = difesa;
	}
	public int getPlMassimi() {
		return plMassimi;
	}
	public void setPlMassimi(int plMassimi) {
		this.plMassimi = plMassimi;
	}
	public int getTassoCattura() {
		return tassoCattura;
	}
	public void setTassoCattura(int tassoCattura) {
		this.tassoCattura = tassoCattura;
	}
	public int getTassoFuga() {
		return tassoFuga;
	}
	public void setTassoFuga(int tassoFuga) {
		this.tassoFuga = tassoFuga;
	}
	
	@Override
	public String toString() {
		return "Statistica [ps=" + ps + ", attacco=" + attacco + ", difesa=" + difesa + ", plMassimi=" + plMassimi
				+ ", tassoCattura=" + tassoCattura + ", tassoFuga=" + tassoFuga + "]";
	}
	
}

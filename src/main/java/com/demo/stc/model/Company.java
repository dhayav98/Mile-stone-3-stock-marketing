package com.demo.stc.model;


import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;



@Entity
@Table(name="company")
public class Company {

	/*
	 * org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'entityManagerFactory' defined in class path resource [org/springframework/boot/autoconfigure/orm/jpa/HibernateJpaConfiguration.class]: Invocation of init method failed; nested exception is javax.persistence.PersistenceException: [PersistenceUnit: default] Unable to build Hibernate SessionFactory; nested exception is org.hibernate.tool.schema.spi.SchemaManagementException: Schema-validation: wrong column type encountered in column [turnover] in table [company]; found [decimal (Types#DECIMAL)], but expecting [double precision (Types#DOUBLE)]

	 * 
	 */
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int companyId; 
	private String companyName;	
	private BigDecimal  turnOver;
	private String ceoName;
	private String boardOfDirectors;
	private int sectorId;
	private String breifWriteUp;
	private int stockCode;
	
	public int getCompanyId() {
		return companyId;
	}




	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}




	public String getCompanyName() {
		return companyName;
	}




	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}




	public BigDecimal getTurnOver() {
		return turnOver;
	}




	public void setTurnOver(BigDecimal turnOver) {
		this.turnOver = turnOver;
	}




	public String getCeoName() {
		return ceoName;
	}




	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}




	public String getBoardOfDirectors() {
		return boardOfDirectors;
	}




	public void setBoardOfDirectors(String boardOfDirectors) {
		this.boardOfDirectors = boardOfDirectors;
	}




	public int getSectorId() {
		return sectorId;
	}




	public void setSectorId(int sectorId) {
		this.sectorId = sectorId;
	}




	public String getBreifWriteUp() {
		return breifWriteUp;
	}




	public void setBreifWriteUp(String breifWriteUp) {
		this.breifWriteUp = breifWriteUp;
	}




	public int getStockCode() {
		return stockCode;
	}




	public void setStockCode(int stockCode) {
		this.stockCode = stockCode;
	}




	public String toString(){
		return "id:"+this.getCompanyId()+" directors:"+this.getBoardOfDirectors();
	}
}

/*
public class Company {

	private int companyId; 
	private String boardOfDirectors;
	private Sector sector;

	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getBoardOfDirectors() {
		return boardOfDirectors;
	}
	public void setBoardOfDirectors(String boardOfDirectors) {
		this.boardOfDirectors = boardOfDirectors;
	}
	public Sector getSector() {
		return sector;
	}
	public void setSector(Sector sector) {
		this.sector = sector;
	}
	
	public String toString(){
		return "id:"+this.getCompanyId()+" directors:"+this.getBoardOfDirectors();
	}
}
*/
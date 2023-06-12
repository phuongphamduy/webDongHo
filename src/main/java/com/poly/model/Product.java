package com.poly.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Products")
public class Product implements Serializable {
	@Id
	Integer id;
	@NotBlank
	String name;
	String image;
	@NotNull
	Double price;
	@NotNull
	Double discount;
	@Temporal(TemporalType.DATE)
	Date createdate;
	@ManyToOne
	@JoinColumn(name = "categoryid")
	Category category;
	@OneToMany(mappedBy = "product")
	List<OrderDetail> list;
	
}

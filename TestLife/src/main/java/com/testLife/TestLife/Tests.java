package com.testLife.TestLife;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Tests {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int test_id;
	private String category;
	private String test_name;
	private String description_notes;
	private int test_price;
	private String img_url;	
	@OneToMany
	private List<Cart> cart;
	
	public Tests() {
		super();
	}

	public Tests(int test_id, String category, String test_name, String description_notes, int test_price,
			String img_url) {
		super();
		this.test_id = test_id;
		this.category = category;
		this.test_name = test_name;
		this.description_notes = description_notes;
		this.test_price = test_price;
		this.img_url = img_url;
	}

	public int getTest_id() {
		return test_id;
	}

	public void setTest_id(int test_id) {
		this.test_id = test_id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTest_name() {
		return test_name;
	}

	public void setTest_name(String test_name) {
		this.test_name = test_name;
	}

	public String getDescription_notes() {
		return description_notes;
	}

	public void setDescription_notes(String description_notes) {
		this.description_notes = description_notes;
	}

	public int getTest_price() {
		return test_price;
	}

	public void setTest_price(int test_price) {
		this.test_price = test_price;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public List<Cart> getCart() {
		return cart;
	}

	public void setCart(List<Cart> cart) {
		this.cart = cart;
	}
	
}

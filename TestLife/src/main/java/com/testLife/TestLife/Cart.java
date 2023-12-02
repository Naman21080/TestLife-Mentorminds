package com.testLife.TestLife;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Cart {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartId;
	@ManyToOne
	private Tests test_id;
	@ManyToOne
	private Users id;	
	
	public Cart() {
		super();
	}

	public Cart(Tests test_id, Users id) {
		super();
		this.test_id = test_id;
		this.id = id;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public Tests getTest_id() {
		return test_id;
	}

	public void setTest_id(Tests test_id) {
		this.test_id = test_id;
	}

	public Users getId() {
		return id;
	}

	public void setId(Users id) {
		this.id = id;
	}	
	
}

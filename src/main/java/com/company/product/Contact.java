package com.company.product;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Contact {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "phone")
	private long phone;
	@Column(name = "address")
	private String address;

	public Contact() {
		super();
	}

	public Contact(int id, String name, long phone, String address) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.address = address;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Contact [id=" + id + ", name=" + name + ", phone=" + phone
				+ ", address=" + address + "]";
	}

}

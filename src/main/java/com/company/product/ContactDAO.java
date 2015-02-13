package com.company.product;

import java.util.List;

import javax.transaction.Transactional;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class ContactDAO {

	@Autowired
	private SessionFactory _sessionFactory;

	private Session getSession() {
		return _sessionFactory.getCurrentSession();
	}

	public void saveContact(Contact contact) {
		getSession().save(contact);
		return;
	}
	 @SuppressWarnings("unchecked")
	  public List<Contact> getAll() {
	    return getSession().createQuery("from Contact").list();
	  }
	  
}

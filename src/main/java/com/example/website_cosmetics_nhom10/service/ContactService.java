package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Contact;
import com.example.website_cosmetics_nhom10.dao.ContactDao;

import java.util.List;

public class ContactService {
    private static ContactService instance;
    public static ContactService getInstance() {
        if (instance == null)
            instance = new ContactService();
        return instance;
    }
    public List<Contact> getAl(){
        return ContactDao.getInstance ().getAll ();
    }
    public void deleteContactById(Long id) {
        ContactDao.getInstance ().deleteContactById (id);
    }
    public void insertContact(String name, String address, String email, String phone) {
        ContactDao.getInstance ().insertContact (name, address, email, phone);
    }
    public Contact getContactById(Long id) {
        return ContactDao.getInstance ().getContactById (id);
    }
    public void updateContact(String name, String address, String email, String phone, Long id) {
        ContactDao.getInstance ().updateContact (name, address, email, phone, id);
    }
    public List<Contact> paginationContact(int index, int size) {
        return ContactDao.getInstance ().paginationContact (index, size);
    }
}

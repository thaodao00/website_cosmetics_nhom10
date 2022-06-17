package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.beans.Company;
import com.example.website_cosmetics_nhom10.beans.Contact;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ContactDao {
    private static ContactDao instance;

    public static ContactDao getInstance() {
        if (instance == null)
            instance = new ContactDao ();
        return instance;
    }
    public List<Contact> getAll() {
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from contact").mapToBean(Contact.class).stream().collect(Collectors.toList()));
    }
    public void deleteContactById(Long id) {
        JDBIConnector.get ().withHandle (handle ->
                handle.createUpdate ("DELETE FROM contact WHERE id = ?").bind (0, id).execute ());
    }
    public void insertContact(String name, String address, String email, String phone) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO contact (name, address, email, phone) VALUES(?, ?, ?, ?)")
                        .bind(0, name)
                        .bind (1, address)
                        .bind (2, email)
                        .bind (3, phone)
                        .execute());
    }
    public Contact getContactById(Long id) {
        List<Contact> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from contact where id = ?")
                        .bind(0, id)
                        .mapToBean(Contact.class)
                        .list());
        if (list.size() > 0)
            return list.get(0);
        return null;
    }
    public void updateContact(String name, String address, String email, String phone, Long id) {
        JDBIConnector.get().withHandle(handle -> handle.createUpdate("UPDATE contact set name = ?, address = ?, email = ?, phone = ? WHERE id = ?")
                .bind(0, name)
                .bind (1, address)
                .bind (2, email)
                .bind (3, phone)
                .bind(4, id)
                .execute());
    }
    public List<Contact> paginationContact(int index, int size) {
        List<Contact> list = JDBIConnector.get ().withHandle (handle ->
                handle.createQuery ("With C1 AS (SELECT *, ROW_NUMBER() OVER(ORDER BY id DESC) as RN FROM contact)\n" +
                                "select * FROM C1 WHERE RN BETWEEN ?*?-(?-1) AND ?*?")
                        .bind (0, index)
                        .bind (1, size)
                        .bind (2, size)
                        .bind (3, index)
                        .bind (4, size)
                        .mapToBean (Contact.class)
                        .list ());
        return list;
    }

    public static void main(String[] args) {
        System.out.println (ContactDao.getInstance ().paginationContact (1,6));
        System.out.println (ContactDao.getInstance ().getAll ());
    }
}

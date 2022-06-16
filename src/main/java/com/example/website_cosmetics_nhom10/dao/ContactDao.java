package com.example.website_cosmetics_nhom10.dao;

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
}

package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;
import com.example.website_cosmetics_nhom10.beans.Category;

import java.util.List;
import java.util.stream.Collectors;

public class CategoryDao {
    public static CategoryDao instance;

    public CategoryDao() {

    }

    public static CategoryDao getInstance() {
        if (instance == null)
            instance = new CategoryDao();
        return instance;
    }

    public List<Category> getAll() {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from category").mapToBean(Category.class).stream().collect(Collectors.toList()));
    }
    public List<Category> getCategory() {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from category where id !=1").mapToBean(Category.class).stream().collect(Collectors.toList()));
    }

    public void insertCategory(String name) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO category (name) VALUES(?)")
                        .bind(0, name)
                        .execute());
    }

    public Category getCategoryById(Long id) {
        List<Category> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from category where id = ?")
                        .bind(0, id)
                        .mapToBean(Category.class)
                        .list());
        if (list.size() > 0)
            return list.get(0);
        return null;
    }
    public void deleteCategoryById(Long id) {
        JDBIConnector.get ().withHandle (handle ->
                handle.createUpdate ("DELETE FROM category WHERE id = ?").bind (0, id).execute ());
    }
    public void updateCategory(String name, Long id) {
        JDBIConnector.get().withHandle(handle -> handle.createUpdate("UPDATE category set name = ? WHERE id = ?")
                .bind(0, name)
                .bind(1, id)
                .execute());
    }
    public List<Category> paginationCategory(int index, int size) {
        List<Category> list = JDBIConnector.get ().withHandle (handle ->
                handle.createQuery ("With C AS (SELECT *, ROW_NUMBER() OVER(ORDER BY id DESC) as RN FROM category)\n" +
                                "select * FROM C WHERE RN BETWEEN ?*?-(?-1) AND ?*? AND id <> 1")
                        .bind (0, index)
                        .bind (1, size)
                        .bind (2, size)
                        .bind (3, index)
                        .bind (4, size)
                        .mapToBean (Category.class)
                        .list ());
        return list;
    }
    public static void main(String[] args) {
////        System.out.print(CategoryDao.getInstance().getCategoryByID (1L));
//        CategoryDao.getInstance().updateCategory("ttttttt", 43L);
//        System.out.print(CategoryDao.getInstance().getAll());
        int[] myNum = {0, 20, 30, 0};
        for (int i =0 ; i<myNum.length; i++){
            if(myNum[i]==10){
                System.out.println ("co");
                break;
            }
            else{
                System.out.println ("k");
            }
        }
        System.out.println ("hhh");
    }
}

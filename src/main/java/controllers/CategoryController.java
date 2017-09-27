package controllers;

import dto.Category;
import util.Database;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by chathuri on 9/17/17.
 */
public class CategoryController {
    private final String CATEGORY_TABLE_NAME = "category";

    public List<Category> getAllCategories() {
        List<Category> ALL_CATEGORIES = new ArrayList<Category>();
        Connection connection = null;
        try {
            connection = new Database().connect();
            String sql ="SELECT * FROM " + CATEGORY_TABLE_NAME;
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                Category category = new Category();
                category.setCatId(resultSet.getString("catId"));
                category.setCatname(resultSet.getString("catName"));
                category.setCatDescription(resultSet.getString("catDescription"));
                ALL_CATEGORIES.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return ALL_CATEGORIES;
    }
}

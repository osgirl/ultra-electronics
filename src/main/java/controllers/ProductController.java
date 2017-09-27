package controllers;

import dto.Product;
import util.Database;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by chathuri on 9/16/17.
 */
public class ProductController {
    private final String PRODUCT_TABLE_NAME = "product";
    private final String INVENTORY_TABLE_NAME = "inventory";
    private final String CATEGORY_TABLE_NAME = "category";

    public List<Product> getAllProducts() {
        List<Product> ALL_PRODUCTS = new ArrayList<Product>();
        Connection connection = null;
        try {
            connection = new Database().connect();

            String sql ="SELECT " +
                        "  product.productId AS productId, " +
                        "  productName, " +
                        "  (SELECT catName " +
                        "   FROM " + CATEGORY_TABLE_NAME +
                        "   WHERE product.catId = category.catId) AS category, " +
                        "  unitPrice, " +
                        "  productDescription, " +
                        "  IFNULL(qty, 0) AS qty " +
                        "FROM " + PRODUCT_TABLE_NAME +
                        "  LEFT JOIN " + INVENTORY_TABLE_NAME + " ON product.productId = inventory.productId;";

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                Product product = new Product();
                product.setProductId(resultSet.getString("productId"));
                product.setProductName(resultSet.getString("productName"));
                product.setProductDescription(resultSet.getString("productDescription"));
                product.setCategory(resultSet.getString("category"));
                product.setQty(resultSet.getInt("qty"));
                product.setUnitPrice(resultSet.getDouble("unitPrice"));
                ALL_PRODUCTS.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return ALL_PRODUCTS;
    }

    public List<Product> getLatestProducts(int productCount){
        List<Product> LATEST_PRODUCTS = new ArrayList<Product>();
        Connection connection = null;
        try {
            connection = new Database().connect();

            String sql ="SELECT " +
                    "  product.productId AS productId, " +
                    "  productName, " +
                    "  (SELECT catName " +
                    "   FROM " + CATEGORY_TABLE_NAME +
                    "   WHERE product.catId = category.catId) AS category, " +
                    "  unitPrice, " +
                    "  productDescription, " +
                    "  IFNULL(qty, 0) AS qty " +
                    "FROM " + PRODUCT_TABLE_NAME +
                    "  LEFT JOIN " + INVENTORY_TABLE_NAME + " ON product.productId = inventory.productId " +
                    " ORDER BY productId DESC LIMIT " + productCount + ";";

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                Product product = new Product();
                product.setProductId(resultSet.getString("productId"));
                product.setProductName(resultSet.getString("productName"));
                product.setProductDescription(resultSet.getString("productDescription"));
                product.setCategory(resultSet.getString("category"));
                product.setQty(resultSet.getInt("qty"));
                product.setUnitPrice(resultSet.getDouble("unitPrice"));
                LATEST_PRODUCTS.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return LATEST_PRODUCTS;
    }

    public List<Product> getProductsByCategory(String categoryId) {
        List<Product> PRODUCTS_IN_CATEGORY = new ArrayList<Product>();
        Connection connection = null;
        try {
            connection = new Database().connect();

            String sql ="SELECT " +
                    "  product.productId AS productId, " +
                    "  productName, " +
                    "  (SELECT catName " +
                    "   FROM " + CATEGORY_TABLE_NAME +
                    "   WHERE product.catId = category.catId) AS category, " +
                    "  unitPrice, " +
                    "  productDescription, " +
                    "  IFNULL(qty, 0) AS qty " +
                    "FROM " + PRODUCT_TABLE_NAME +
                    "  LEFT JOIN " + INVENTORY_TABLE_NAME + " ON product.productId = inventory.productId " +
                    "WHERE catId='" + categoryId +"'";

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                Product product = new Product();
                product.setProductId(resultSet.getString("productId"));
                product.setProductName(resultSet.getString("productName"));
                product.setProductDescription(resultSet.getString("productDescription"));
                product.setCategory(resultSet.getString("category"));
                product.setQty(resultSet.getInt("qty"));
                product.setUnitPrice(resultSet.getDouble("unitPrice"));
                PRODUCTS_IN_CATEGORY.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return PRODUCTS_IN_CATEGORY;
    }

    public List<Product> searchProducts(String searchTerm) {
        List<Product> PRODUCTS = new ArrayList<Product>();
        Connection connection = null;
        try {
            connection = new Database().connect();

            String sql ="SELECT " +
                    "  product.productId AS productId, " +
                    "  productName, " +
                    "  (SELECT catName " +
                    "   FROM " + CATEGORY_TABLE_NAME +
                    "   WHERE product.catId = category.catId) AS category, " +
                    "  unitPrice, " +
                    "  productDescription, " +
                    "  IFNULL(qty, 0) AS qty " +
                    "FROM " + PRODUCT_TABLE_NAME +
                    "  LEFT JOIN " + INVENTORY_TABLE_NAME + " ON product.productId = inventory.productId " +
                    "WHERE productName LIKE '%" + searchTerm +"%' " +
                    "OR productDescription LIKE '%" + searchTerm +"%'";

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while(resultSet.next()){
                Product product = new Product();
                product.setProductId(resultSet.getString("productId"));
                product.setProductName(resultSet.getString("productName"));
                product.setProductDescription(resultSet.getString("productDescription"));
                product.setCategory(resultSet.getString("category"));
                product.setQty(resultSet.getInt("qty"));
                product.setUnitPrice(resultSet.getDouble("unitPrice"));
                PRODUCTS.add(product);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }

        return PRODUCTS;

    }

    public boolean addProduct(Product product){
        Connection connection = null;
        try {
            connection = new Database().connect();
            // check if product id already exists
            String sql1 = "SELECT 1 FROM product WHERE productId='"+product.getProductId()+"'";
            Statement statement1 = connection.createStatement();
            ResultSet resultSet = statement1.executeQuery(sql1);
            if(resultSet.next()) return false;

            String sql2 = "INSERT INTO product VALUES (" +
                    "'"+product.getProductId()+"', '"
                    +product.getProductName()+"', '"
                    +product.getProductDescription()+"', '"+product.getCategoryId()+"', "+product.getUnitPrice()+")";
            Statement statement2 = connection.createStatement();
            statement2.execute(sql2);
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return true;
    }


}

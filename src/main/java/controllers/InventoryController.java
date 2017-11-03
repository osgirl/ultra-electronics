package controllers;
import dto.Inventory;
import util.Database;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by chathuri on 10/7/17.
 */
public class InventoryController {

    private final String INVENTORY_TABLE_NAME = "inventory";

    public Inventory getInventoryById(String productId) {
        Connection connection = null;
        try {
            connection = new Database().connect();

            String sql ="SELECT " +
                    INVENTORY_TABLE_NAME + ".productId AS productId, " +
                    "qty " +
                    "FROM " + INVENTORY_TABLE_NAME;
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            if(resultSet.next()){
                Inventory inventory = new Inventory();
                inventory.setProductId(resultSet.getString("productId"));
                inventory.setQty(resultSet.getInt("Qty"));
                return inventory;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return null;
    }



    public List<Inventory> getAllInventories() {
        List<Inventory> ALL_INVENTORIES = new ArrayList<Inventory>();
        Connection connection = null;
        try {
            connection = new Database().connect();

            String sql ="SELECT " +
                    INVENTORY_TABLE_NAME + ".productId AS productId, " +
                    "qty " +
                    "FROM " + INVENTORY_TABLE_NAME;

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                Inventory inventory = new Inventory();
                inventory.setProductId(resultSet.getString("productId"));
                inventory.setQty(resultSet.getInt("qty"));
                ALL_INVENTORIES.add(inventory);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return ALL_INVENTORIES;
    }

    public boolean addInventory(Inventory inventory){
        Connection connection = null;
        try {
            connection = new Database().connect();
            String sql1 = "SELECT 1 FROM "+INVENTORY_TABLE_NAME+" WHERE productId='"+inventory.getProductId()+"'";
            Statement statement1 = connection.createStatement();
            ResultSet resultSet = statement1.executeQuery(sql1);
            if(resultSet.next()) return false;

            String sql2 = "INSERT INTO "+INVENTORY_TABLE_NAME+" VALUES ('"
                    +inventory.getProductId()+"', '"
                    +inventory.getQty()+"')";
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

    public boolean updateInventory(Inventory inventory) {
        Connection connection = null;
        try {
            connection = new Database().connect();
            String sql =    "UPDATE "+INVENTORY_TABLE_NAME+" SET " +
                    "qty='"+inventory.getQty()+"' " +
                    "WHERE productId='"+inventory.getProductId()+"'";
            System.out.println(sql);
            Statement statement2 = connection.createStatement();
            statement2.execute(sql);
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



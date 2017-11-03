package controllers;

import dto.OrderDetail;
import dto.Product;
import dto.ProductOrder;
import util.Database;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by chathuri on 9/21/17.
 */
public class OrderController {
    private final String ORDERDETAIL_TABLE_NAME = "orderDetail";
    private final String ORDER_TABLE_NAME = "productOrder";

    public List<ProductOrder> getAllOrders() {
        List<ProductOrder> ALL_ORDERS = new ArrayList<ProductOrder>();
        Connection connection = null;
        try {
            connection = new Database().connect();
            String sql ="SELECT *  FROM " + ORDER_TABLE_NAME;
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                ProductOrder productOrder = new ProductOrder();
                productOrder.setOrderId(resultSet.getString("orderId"));
                productOrder.setCustId(resultSet.getString("custId"));
                productOrder.setAddress(resultSet.getString("address"));
                productOrder.setTel(resultSet.getString("tel"));
                ALL_ORDERS.add(productOrder);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return ALL_ORDERS;
    }

    public void addOrder(ProductOrder productOrder){
        Connection connection = null;
        try {
            connection = new Database().connect();

            String sql ="INSERT INTO " + ORDER_TABLE_NAME +" (custId, tel, address) VALUES ('" +
                    productOrder.getCustId() + "', '" +
                    productOrder.getTel() + "', '" +
                    productOrder.getAddress() + "')";

            Statement statement = connection.createStatement();
            int insertedRowCount = statement.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
            if(insertedRowCount > 0){
                ResultSet rs = statement.getGeneratedKeys();
                rs.next();
                int orderId = rs.getInt(1);
                List<OrderDetail> orderDetails = productOrder.getOrderDetails();

                for(OrderDetail orderDetail : orderDetails){
                    String sql2 = "INSERT INTO " + ORDERDETAIL_TABLE_NAME + " (orderId, productId, qty) VALUES ('" +
                            orderId + "', '" +
                            orderDetail.getProductId() + "', '" +
                            orderDetail.getQty() + "')";
                    Statement statement2 = connection.createStatement();
                    statement2.executeUpdate(sql2);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
    }

    public ProductOrder getOrderById(int orderId){
        ProductOrder productOrder = null;
        Connection connection = null;
        try{
            connection = new Database().connect();
            String sql = "SELECT * FROM " + ORDER_TABLE_NAME + " WHERE orderId='" + orderId + "' LIMIT 1";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            if (resultSet.next()){
                productOrder = new ProductOrder();
                productOrder.setCustId(resultSet.getString("custId"));
                productOrder.setAddress(resultSet.getString("address"));
                productOrder.setTel(resultSet.getString("tel"));
                productOrder.setOrderDetails(getDetailsByOrderId(orderId));
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return productOrder;
    }

    public List<OrderDetail> getDetailsByOrderId(int orderId){
        List<OrderDetail> orderDetails = new ArrayList<OrderDetail>();
        Connection connection = null;
        try{
            connection = new Database().connect();
            String sql = "SELECT * FROM " + ORDERDETAIL_TABLE_NAME + " WHERE orderId='" + orderId + "'";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setProductId(resultSet.getString("productId"));
                orderDetail.setQty(resultSet.getInt("qty"));
                orderDetails.add(orderDetail);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return orderDetails;
    }
}

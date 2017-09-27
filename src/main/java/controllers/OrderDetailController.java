package controllers;

import dto.OrderDetail;
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
public class OrderDetailController {
    private final String ORDERDETAIL_TABLE_NAME = "orderDetail";
    private final String ORDER_TABLE_NAME = "orders";

    public List<OrderDetail> getAllOrders() {
        List<OrderDetail> ALL_ORDERDETAILS = new ArrayList<OrderDetail>();
        Connection connection = null;
        try {
            connection = new Database().connect();

            String sql ="SELECT " + ORDERDETAIL_TABLE_NAME +".orderId AS orderId, " +
                        "  productId," +
                        "  qty , " +
                        "  (SELECT custId " +
                        "   FROM " + ORDER_TABLE_NAME +
                        "   WHERE " + ORDERDETAIL_TABLE_NAME + ".orderId =" + ORDER_TABLE_NAME + ".orderId ) AS custId " +
                        "FROM " + ORDERDETAIL_TABLE_NAME + ";";

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                OrderDetail orderDetail = new OrderDetail();

                orderDetail.setOrderId(resultSet.getString("orderId"));
                orderDetail.setProductId(resultSet.getString("productId"));
                orderDetail.setQty(resultSet.getInt("qty"));
                orderDetail.setCustId(resultSet.getString("custId"));
                System.out.println(orderDetail);
                ALL_ORDERDETAILS.add(orderDetail);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return ALL_ORDERDETAILS;
    }


}

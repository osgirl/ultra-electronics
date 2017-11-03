package dto;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by chathuri on 10/26/17.
 */
public class ProductOrder {
    private String orderId;
    private String custId;
    private String tel;
    private String address;
    private List<OrderDetail> orderDetails;

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getCustId() {
        return custId;
    }

    public void setCustId(String custId) {
        this.custId = custId;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }

    public void addOrderDetail(OrderDetail orderDetail){
        if(this.orderDetails==null) orderDetails = new ArrayList<OrderDetail>();
        orderDetails.add(orderDetail);
    }
}

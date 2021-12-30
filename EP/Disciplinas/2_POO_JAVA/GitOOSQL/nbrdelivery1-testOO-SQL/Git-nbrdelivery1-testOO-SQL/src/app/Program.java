package app;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import db.DB;
import entities.Order;
import entities.OrderStatus;
import entities.Product;
import java.util.HashMap;
import java.util.Map;

public class Program {

    public static void main(String[] args) throws SQLException {

        Connection conn = DB.getConnection();

        Statement st = conn.createStatement();

        //        ResultSet rs = st.executeQuery("select * from tb_product");
        //
        //        while (rs.next()) {
        //            System.out.println(rs.getLong("Id") + ", " + rs.getString("Name"));
        //        }
//        ResultSet rs = st.executeQuery("SELECT * FROM tb_product");
//        System.out.println("Products: ");
//        while (rs.next()) {
//
//            Product p = instantiateProduct(rs);
//            System.out.println(p);
//        }
//        rs = st.executeQuery("SELECT * FROM tb_order");
//        System.out.println("\nOrders: ");
//        while (rs.next()) {
//
//            Order o = instantiateOrder(rs);
//            System.out.println(o);
//        }
        ResultSet rs = st.executeQuery("SELECT * FROM tb_order "
                + "INNER JOIN tb_order_product ON tb_order.id = tb_order_product.order_id "
                + "INNER JOIN tb_product ON tb_product.id = tb_order_product.product_id");
        System.out.println("\nJOIN: ");

        Map<Long, Order> mapOrders = new HashMap<>();
        Map<Long, Product> mapProducts = new HashMap<>();

        while (rs.next()) {

            Long orderId = rs.getLong("order_id");
            if (mapOrders.get(orderId) == null) {
                Order order = instantiateOrder(rs);
                mapOrders.put(orderId, order);
            }

            Long productId = rs.getLong("product_id");
            if (mapProducts.get(productId) == null) {
                Product p = instantiateProduct(rs);
                mapProducts.put(productId, p);
            }

            mapOrders.get(orderId).getProducts().add(mapProducts.get(productId));
            
        }
        
        for (Long orderId : mapOrders.keySet()) {
            System.out.println(mapOrders.get(orderId));
            for (Product p : mapOrders.get(orderId).getProducts()) {
                System.out.println(p);
            }
            System.out.println("");
        }
    }

    private static Product instantiateProduct(ResultSet rs) throws SQLException {

        Product p = new Product();
        p.setId(rs.getLong("product_id"));
        p.setDescription(rs.getString("description"));
        p.setName(rs.getString("name"));
        p.setImageUri(rs.getString("image_uri"));
        p.setPrice(rs.getDouble("price"));

        return p;
    }

    private static Order instantiateOrder(ResultSet rs) throws SQLException {

        Order o = new Order();
        o.setId(rs.getLong("order_id"));
        o.setAddress(rs.getString("address"));
        o.setLatitude(rs.getDouble("latitude"));
        o.setLongitude(rs.getDouble("longitude"));
        o.setMoment(rs.getTimestamp("moment").toInstant());
        o.setStatus(OrderStatus.values()[rs.getInt("status")]);
        return o;
    }
}

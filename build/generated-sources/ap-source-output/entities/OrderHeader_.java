package entities;

import entities.Customer;
import entities.OrderDetail;
import entities.Staff;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-05-27T10:44:23")
@StaticMetamodel(OrderHeader.class)
public class OrderHeader_ { 

    public static volatile SingularAttribute<OrderHeader, Date> date;
    public static volatile CollectionAttribute<OrderHeader, OrderDetail> orderDetailCollection;
    public static volatile SingularAttribute<OrderHeader, Customer> customerId;
    public static volatile SingularAttribute<OrderHeader, Integer> id;
    public static volatile SingularAttribute<OrderHeader, Staff> staffId;
    public static volatile SingularAttribute<OrderHeader, String> status;

}
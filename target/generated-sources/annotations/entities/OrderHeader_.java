package entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-06-23T15:42:55")
@StaticMetamodel(OrderHeader.class)
public class OrderHeader_ { 

    public static volatile SingularAttribute<OrderHeader, Date> date;
    public static volatile SingularAttribute<OrderHeader, String> shipToAddress;
    public static volatile SingularAttribute<OrderHeader, Integer> orderId;
    public static volatile SingularAttribute<OrderHeader, Integer> customerId;
    public static volatile SingularAttribute<OrderHeader, Integer> id;
    public static volatile SingularAttribute<OrderHeader, Integer> staffId;
    public static volatile SingularAttribute<OrderHeader, String> status;

}
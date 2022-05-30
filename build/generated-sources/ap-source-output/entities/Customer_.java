package entities;

import entities.Account;
import entities.OrderHeader;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-05-27T10:44:23")
@StaticMetamodel(Customer.class)
public class Customer_ { 

    public static volatile CollectionAttribute<Customer, OrderHeader> orderHeaderCollection;
    public static volatile SingularAttribute<Customer, String> shipToAddress;
    public static volatile SingularAttribute<Customer, Integer> id;
    public static volatile SingularAttribute<Customer, String> category;
    public static volatile SingularAttribute<Customer, Account> account;

}
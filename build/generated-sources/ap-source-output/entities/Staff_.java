package entities;

import entities.Account;
import entities.OrderHeader;
import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-05-27T10:44:23")
@StaticMetamodel(Staff.class)
public class Staff_ { 

    public static volatile CollectionAttribute<Staff, OrderHeader> orderHeaderCollection;
    public static volatile SingularAttribute<Staff, Integer> departmentId;
    public static volatile SingularAttribute<Staff, Integer> id;
    public static volatile SingularAttribute<Staff, BigDecimal> salary;
    public static volatile SingularAttribute<Staff, Account> account;

}
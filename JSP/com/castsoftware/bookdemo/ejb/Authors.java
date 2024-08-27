package com.castsoftware.bookdemo.ejb;

import java.rmi.RemoteException;
import javax.ejb.EJBObject;
import java.sql.SQLException;
import java.util.Vector;

public interface Authors extends EJBObject {
    
    public String getAuthors() throws RemoteException, SQLException;
    
    public void createSale(int quantity, int discount)
                                throws RemoteException, SQLException;

}
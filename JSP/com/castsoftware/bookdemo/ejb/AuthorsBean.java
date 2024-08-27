package com.castsoftware.bookdemo.ejb;

import java.sql.*;
import java.util.Vector;
import javax.ejb.*;
import java.rmi.RemoteException;

public class AuthorsBean implements SessionBean  {

    public void ejbCreate() throws  CreateException,
                                    RemoteException 
    {
	System.out.println("ejbCreate");                                    	
    }


    public String getAuthors() throws SQLException, 
    				      RemoteException 
    {
    	String res = new String ("cool ca marche");
        //Vector vData = new Vector();
        System.out.println("*************************************getAuthors**************************************");
	return res;
    }

    public void createSale(int quantity, int discount) throws RemoteException, 
    							      SQLException
    {
	System.out.println("createSale");
    }


    // empty EJB methods
    public void ejbActivate() throws RemoteException {}
    public void ejbPassivate() throws RemoteException {}
    public void ejbRemove() throws RemoteException {}
    public void setSessionContext(SessionContext ctx) throws RemoteException {}
}

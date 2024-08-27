package com.castsoftware.bookdemo.ejb;

import java.rmi.RemoteException;
import javax.ejb.*;

public interface AuthorsHome extends EJBHome {

    public Authors create() throws  CreateException,
                                    RemoteException;                                    
}
package com.castsoftware.bookdemo.javabean;

import java.rmi.*;
import javax.naming.*;
import java.util.Properties;
import javax.rmi.PortableRemoteObject;
import java.util.*;

import com.castsoftware.bookdemo.ejb.*;

public class NewSaleEjbItf extends Object
{
 	private AuthorsHome home;
 	private Authors authors;
  public NewSaleEjbItf()
  {
     System.setProperty( "java.naming.factory.initial", "org.jnp.interfaces.NamingContextFactory");
     System.setProperty( "java.naming.provider.url", "localhost:1099");

        try {
            InitialContext jndiContext = new InitialContext();
            System.out.println("got context");
//            Object ref  = jndiContext.lookup("CastPubs");
            Object ref  = jndiContext.lookup("Authors");
            System.out.println("got ref");
            home = (AuthorsHome) PortableRemoteObject.narrow (ref, AuthorsHome.class);
            System.out.println("got home");
            authors = home.create();
            System.out.println("called create method");
            System.out.println(authors.getAuthors());
            System.out.println("called getAuthors");
            authors.createSale(10,10);
            System.out.println("called createSale");

        } catch (Exception e) {
            System.out.println(e.toString());
        }
  }
  
  public String GetAuthors()
  {
  	try {
  		return authors.getAuthors();
  	 } 
  	 catch ( Exception e )
  	 { return e.toString(); }
  }
 
}

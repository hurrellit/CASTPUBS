package com.castsoftware.util.gui;

import java.sql.*;

public class Menu extends Object
{
 public Menu()
 { }
 public static String addItem( String menu, String item, String path, String location )
  {
    String res = null;
    res = menu+".addItem(new TreeMenuItem(\""+item+"\"";
    if ( path != null ) res += ",\""+path+"\"";
    if ( location != null ) res+= ",\""+location+"\"";
    return res + "));";
  }

 public static String addItem( String menu, String item )
  {
    return addItem( menu, item, null, null );
  }

 public static String addItem( String menu, String item, String path )
  {
    return addItem( menu, item, path, "Principale" );
  }

 public static String declareTreeMenu(String treeMenuName)
  {
    return "\n//"+treeMenuName + "\nvar "+treeMenuName + " = new TreeMenu(); ";
  }
 
 public static String addSubMenu( String menu, String subMenu, int index)
 {
  return menu + ".items[" + index + "].makeSubmenu( " + subMenu + " );";
 }

}
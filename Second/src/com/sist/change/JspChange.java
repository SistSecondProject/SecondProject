package com.sist.change;

public class JspChange {
   private static String[] jsp={
	   "home.jsp",
	   "../company/company.jsp",
	   "../compare/catchcompare.jsp",
	   "../self/passinfo.jsp"
   };
   public static String change(int no)
   {
	   return jsp[no];
   }
}

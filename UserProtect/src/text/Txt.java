package text;

public class Txt {

	public static void main(String[] args) {
		  String str=" ";
		  //String str="he  l	l  o ,  w " + "  or			l				d    .   ";
		  System.out.println(str.trim()+"+++"); 
		  System.out.println(str.replace(" ", "")+"+++");
		  System.out.println(str.replace("", "")+"+++");
		  System.out.println(str.replaceAll(" ", "")+"+++");
		  System.out.println(str.replaceAll(" +", "")+"+++");
		  System.out.println(str.replaceAll("\\s*", "")+"+++");
		 
		
			/*
			 * System.out.println("+++"+str+"+++"); System.out.println(str==null);
			 */

		
	}

}

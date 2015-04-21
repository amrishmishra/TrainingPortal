package com.tp.domain.enums;

public enum CountryEnum {


	 USA,
	 INDIA,
	 AUSTRALIA;

    public String value(){
       switch(this) {
        case USA: return "USA";
        case INDIA: return "INDIA";
        case AUSTRALIA: return "AUSTRALIA";            
        default: return "";
      }
   }

}

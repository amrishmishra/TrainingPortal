package com.tp.domain.enums;

public enum TrainerTypeEnum {


	 INDIVIDUAL,
	 CORPORATE,
	 PART_TIME;

    public String value(){
       switch(this) {
        case INDIVIDUAL: return "INDIVIDUAL";
        case CORPORATE: return "CORPORATE";
        case PART_TIME: return "PART_TIME";            
        default: return "";
      }
   }

}

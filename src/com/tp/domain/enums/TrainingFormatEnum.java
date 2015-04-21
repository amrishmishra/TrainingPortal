package com.tp.domain.enums;

public enum TrainingFormatEnum {

	 ONLINE,
	 OFFLINE,
	 HOME_TUTOR,
	 CORRESPONDENCE;

   public String value(){
      switch(this) {
       case ONLINE: return "ONLINE";
       case OFFLINE: return "OFFLINE";
       case HOME_TUTOR: return "HOME_TUTOR";
       case CORRESPONDENCE: return "CORRESPONDENCE";
       default: return "";
     }
  }

}

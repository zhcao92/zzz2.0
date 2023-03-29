# Huace gnss module
protocal need from Huace
  GpChc.msg	
  RawImu.msg		100Hz
  InsPva.msg		   100Hz
  Headingb.msg	  1Hz

## below protocals are paied
  BestPosb.msg	   1Hz
  Range.msg			 1Hz
  GpsEphemeris.msg	60s
  GloEphemeris.msg	 60s
  BdsEphemeris.msg	 60s

## below not included in sensor
  BestVelb.msg



## The messages are arrangeed in serial port as below1

**RS232**

  InsPva.msg		   100Hz	//116+5=121 bytes and ID:507			//12100

**RS422**  

  RawImu.msg		100Hz	//68+5 = 73 bytes and ID:268				//7300
  Headingb.msg	  1Hz		//72 + 4 = 76 bytes and ID : 971			//76  
  BestPosb.msg	   1Hz		//100+? = bytes and ID : 1429			   //105  
  Range.msg			 1Hz		//up to 3000 bytes and ID : 43			  //up to 3000
  GpsEphemeris.msg	60s   //252+? = bytes and ID : 7					 //4
  GloEphemeris.msg	 60s   //172+? = bytes and ID : 723				//2.5
  BdsEphemeris.msg	 60s   //224+? = bytes and ID : 1696			 //4

**none**  

BestVelb.msg						  //?+? = bytes and ID : 99



## The messages are arrangeed in serial port as below2

**RS232**

  InsPva.msg		   100Hz	//116+5=121 bytes and ID:507			//12100 
  RawImu.msg		100Hz	//68+5 = 73 bytes and ID:268				//7300  

**RS422**  

  Headingb.msg	  1Hz		//72 + 4 = 76 bytes and ID : 971			//76  
  BestPosb.msg	   1Hz		//100+? = bytes and ID : 1429			   //105  
  Range.msg			 1Hz		//up to 3000 bytes and ID : 43			  //up to 3000
  GpsEphemeris.msg	60s   //252+? = bytes and ID : 7					 //4
  GloEphemeris.msg	 60s   //172+? = bytes and ID : 723				//2.5
  BdsEphemeris.msg	 60s   //224+? = bytes and ID : 1696			 //4

**none**  

BestVelb.msg						  //?+? = bytes and ID : 99



## The messages are arrangeed in serial port as below3

**RS232**

  InsPva.msg		   100Hz	//116+5=121 bytes and ID:507			  //12100 
  RawImu.msg		100Hz	//68+5 = 73 bytes and ID:268				//7300      
  Headingb.msg	  1Hz		//72 + 4 = 76 bytes and ID : 971			//76  
  BestPosb.msg	   1Hz		//100+? = bytes and ID : 1429			   //105
  GpsEphemeris.msg	60s   //252+? = bytes and ID : 7					 //4
  GloEphemeris.msg	 60s   //172+? = bytes and ID : 723				//2.5
  BdsEphemeris.msg	 60s   //224+? = bytes and ID : 1696			 //4

**RS422**  

  Range.msg			 1Hz		//up to 3000 bytes and ID : 43			  //up to 3000

**none**  

BestVelb.msg						  //?+? = bytes and ID : 99
//import javax.swing.*;

class HashBruteTest extends HashBruter
{
	
	public static void main(String[] args) 
	{
		final HashBruter hb = new HashBruter();
		final boolean BoolStopAtSwitch = false ; 
		boolean ProcessThread = true ; 
		/*
		 * Switch filtering section : 
		 * - Using String startsWith, rather than regular expression, it should be 
		 * easy to offer a range of the search facility to HashBruteTest, and an 
		 * easy way to select which type of case will be involved inside the 
		 * tryBruteForce() function. They are store one-by-one and does reflet a 
		 * number ID for each insertion.
		 * - Following them a if-section coded by representation of 
		 * */
		final String[] ArraySwitchesReg = {
			"--min-search=",
			"--max-search=",
			"--noSpecialC",
			"--noUpperC",
			"--noLowerC",
			"--noDigit",
			"--hash=",
			"--type=" };
					
		int iMinStartSearch = 2; 
		int iMaxStartSearch = 8; 
		boolean BoolNoSpecialCase 	= false ;
		boolean BoolNoUpperCase 		= false ; 
		boolean BoolNoLowercase 		= false ; 
		boolean BoolNoDigit 				= false ; 
		String StrHashFromPrompt  	= new String() ; 
		String StrTypeHash 					= new String() ;   
		String StrValue							= new String() ;
		System.out.println("Switch filter.\nFilter for " + args.length + " arguments at the command-line." ) ; 
		
		for (int iLoopAr = 0; iLoopAr < args.length; iLoopAr++)
		{
			System.out.println("Processing argument : " + iLoopAr + " value: " + args[iLoopAr]  + " .") ; 
			for (int iLoopS = 0; iLoopS < ArraySwitchesReg.length; iLoopS++) 
			{
				boolean matches = args[iLoopAr].startsWith( ArraySwitchesReg[iLoopS] ) ; 
				if( matches )
				{
					System.out.println("This item were inside the cmdline option. switch: " + args[iLoopAr] + " id: " + iLoopS ) ; 
					if( iLoopS == 0 )
					{
						/* 
						 * Treat Cmdline option --min-search=...
						 * */
						System.out.println("Extracting parameter information as minimum-value information.") ; 
						StrValue = args[iLoopAr] ; 
						String[] ArrayPairOpt = StrValue.split("="); 
						System.out.println("\tvalue extracted:[ " + ArrayPairOpt[1] + "]." ) ;
						iMinStartSearch = Integer.parseInt( ArrayPairOpt[1] ) ; 
					
					}
					if( iLoopS == 1 )
					{
						/* 
						 * Treat Cmdline option --max-search=...
						 * */
						System.out.println("Extracting parameter information as maximum-value information.") ; 
						StrValue = args[iLoopAr] ; 
						String[] ArrayPairOpt = StrValue.split("="); 
						System.out.println("\tvalue extracted:[ " + ArrayPairOpt[1] + "]." ) ;
						iMaxStartSearch = Integer.parseInt( ArrayPairOpt[1] ) ; 					
					}
					if( iLoopS == 2 )
					{
						/* 
						 * Treat Cmdline option --noSpecialC
						 * */
						System.out.println("Extracting parameter information as by-excluding Special Characters information.") ; 
						BoolNoSpecialCase=true;
					}
					if( iLoopS == 3 )
					{
						/* 
						 * Treat Cmdline option --noUpperC
						 * */
						System.out.println("Extracting parameter information as by-excluding UpperCase Characters information.") ; 
						BoolNoUpperCase=true;
					}
					if( iLoopS == 4 )
					{
						/* 
						 * Treat Cmdline option --noLowerC
						 * */
						System.out.println("Extracting parameter information as by-excluding LowerCase Characters information.") ; 
						BoolNoLowercase=true;
					}
					if( iLoopS == 5 )
					{
						/* 
						 * Treat Cmdline option --noDigit
						 * */
						System.out.println("Extracting parameter information as by-excluding Digit Characters information.") ; 
						BoolNoDigit=true;
					}
					if( iLoopS == 6 )
					{
						/* 
						 * Treat Cmdline option --hash=...
						 * */
						System.out.println("Extracting parameter information as hash information.") ; 
						StrValue = args[iLoopAr] ; 
						String[] ArrayPairOpt = StrValue.split("="); 
						System.out.println("\tvalue extracted:[ " + ArrayPairOpt[1].toUpperCase() + "]." ) ;
						StrHashFromPrompt = ArrayPairOpt[1].toUpperCase() ; 
					}
					if( iLoopS == 7)
				  {
						/* 
						 * Treat Cmdline option --type=...
						 * */
						System.out.println("Extracting parameter information as digest or ciphering algorithm.") ; 
						StrValue = args[iLoopAr] ;
						String[] ArrayPairOpt = StrValue.split("="); 
						System.out.println("\tvalue extracted:[ " + ArrayPairOpt[1].toLowerCase() + "]." ) ;
						StrTypeHash=ArrayPairOpt[1].toLowerCase() ; 
					}
				}
			}
		}
		
		if ( ! BoolStopAtSwitch )
		{
			hb.setMinLength( iMinStartSearch );
			hb.setMaxLength( iMaxStartSearch ); 
			/*
			 * Match method for BoolNoSpecialCase,BoolNoUpperCase,BoolNoLowercase,BoolNoDigit
			 * - Everything start as 'false' for any of the Bool variable enumerated. And state
			 * as ; it's start and and supplying an switche like :
			 * --noSpecialC , will be set to 'true' and let removing all the Special Characters
			 * --noUpperC   , will be set to 'true' and let removing all the UpperCase Characters
			 * --noLowerC   , "" ""
			 * --noDigit    , "" ""
			 * - and thus inside the if( ! BOOLEAN_VARIABLE ) will enter if you haven't specified one of 
			 * the --noSpecialC, --noUpperC, --no... switches. 
			 * */
			if ( ! BoolNoSpecialCase )
			{ 
				hb.addSpecialCharacters(); 
		  }
			if ( ! BoolNoUpperCase )
			{ 
				hb.addUpperCaseLetters();
		  }
			if ( ! BoolNoLowercase )
			{ 
				hb.addLowerCaseLetters();
		  } 
			if ( ! BoolNoDigit )
			{ 
				hb.addDigits();
		  } 
			
			hb.setType( StrTypeHash );
			hb.setHash( StrHashFromPrompt );
			//hb.setHash("282154720ABD4FA76AD7CD5F8806AA8A19AEFB6D10042B0D57A311B86087DE4DE3186A92019D6EE51035106EE088DC6007BEB7BE46994D1463999968FBE9760E");
			//hb.setHash(args[1].toUpperCase() );

			/*
			 * Example at the prompt that work : 
			 * java HashBruteTest "sha3-384" "1DD0AB6C4BABE494FF4370C53A16427C244F8D45AB0D12A82A014BFAF948932B3F2AB0FE8C9DFE32AF8080841FE00B36"
			 * --> Should also give [AA] as answer. 
			 * promoted from website https://toolkitbay.com/tkb/tool/SHA3_384
			 * where inside the field : AA
			 * and hitting "Process from text" at the right appear the hexadecimal you can copy and paste 
			 * the content into the command line and step a CRC16 cyclic check and extract the content. 
			 * 
			 * Tested with : https://toolkitbay.com/tkb/tool/SHA3_384 
			 * 
			 * As it take on Raspberry pi4 with ubuntu 22.04 64 bit version resolve the checksum in 2.270 sec
			 * for a 2 characters wide a digest for 'AA'. 
			 * 
			 * os : Raspberry pi4 with ubuntu 22.04 64 bit. 
			 * cmd: time java HashBruteTest  --min-search=2 --max-search=5 --type=sha3-384  --hash=5DDB9B05C58D52FE88D7D148DBFC4540CC0D50AF10CE3C9DE039218A75F7CB965FDE9EC83B7647170F67BD978044CF32 	 
			 * answer : TES
			 * time : 0m14.357s
			 * 
			 * os : Raspberry pi4 with ubuntu 22.04 64 bit.
			 * cmd: time  java HashBruteTest --min-search=2 --max-search=5 --type=sha3-384 --hash=9670054bc499523e2f6c4cd99e46836b562032c6236ede11492314120782ea54a5225819049eaaefdf46fc7de6cffd21
			 * answer : BBB
			 * time : 0m12.775s
			 * 
			 * os : Raspberry pi4 with ubuntu 22.04 64 bit.
			 * cmd: time  java HashBruteTest --min-search=2 --max-search=5 --type=sha3-384 --hash=ee5403996c18631160246dfd9e51233a95407a7565019770340372247bf4de3c9b92333eaae4aafe8ed21ea2f0c8d495
			 * answer : CCCD
			 * time : 7m48.568s	
			 * 
			 * os: Raspberry pi4 with ubuntu 22.04 64 bit.
			 * cmd: time  java HashBruteTest --min-search=2 --max-search=5 --type=sha3-384 --hash=cc276e0629393bdd9f43ecf92d7d584d7d159c616147fbe2ae91ab939a1639b396e876eb75c96238ab2c6afbd13c55ba
			 * answer : CDCD
			 * time:7m51.981s
			 * 
			 * 
			 * os: Raspberry pi4 with ubuntu 22.04 64 bit.
			 * cmd: time java HashBruteTest --min-search=4 --max-search=6 --noLowerC  --noDigit --noSpecialC --type="md5" --hash=733508134FC457AEF0B0CBE1972C5AB9
			 * answer : CCABBB (notice uses of md5 cipher service)
			 * time:3m14.149s, producing 321253398 test to get the answer. 
			 * 
			 * 
			 * os: Raspberry pi4 with ubuntu 22.04 64 bit.
			 * cmd: time java HashBruteTest --min-search=4 --max-search=6 --noLowerC  --noDigit --noSpecialC --type="md5" --hash=D4B486F909E08220028E03ABF0B12469
			 * answer : CCABBC (notice uses of md5 cipher service)
			 * time:2m6.544s, producing 321254128 key to test, or to get the answer. Discover the cipher in 37015760 keys spared.  
			 * 
 		   * os: Raspberry pi4 with ubuntu 22.04 64 bit.
			 * cmd: time java HashBruteTest --min-search=4 --max-search=6 --noLowerC  --noDigit --noSpecialC --type="md5" --hash=CE3C0E297C781A1684B6056676B3A21D
			 * answer : CC1BBD (notice uses of md5 cipher service)
			 * time: , producing 321254128
			 * 
			 *  
			 * Note: adding  following switches to all test here [option: --noLowerC --noSpecialC --noDigit ]
			 * reduce the number of total hashes to check. This is causing by numbers of character is greatly reduced 
			 * and make less possibility to create a collision.
			 * 
			 * 
			 */
			
			Thread thread = new Thread(new Runnable() 
			{
				@Override public void run() 
				{ 
					hb.tryBruteForce(); 
				} 
			});			
			
			thread.start();
		
			//hb.getGeneratedHash() 
			System.out.println("Hash: " + StrHashFromPrompt ); 
			System.out.println("Number of Possibilities: " + hb.getNumberOfPossibilities()) ;
			while (!hb.isFound()) 
			{
			 //System.out.println("Checked hashes: " + hb.getCounter());
			 System.out.println("Estimated hashes left: " + hb.getRemainder()) ;
			 
			 if( hb.getRemainder() == 0 )
			 {
				break ;  
			 }
			} 
			System.out.println("Found " + hb.getType() + " hash collision: " + hb.getGeneratedHash() + " data inside is: " + hb.getPassword());

		}
	}

}

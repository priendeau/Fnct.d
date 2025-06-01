
#include "FS.h"
#include "SD.h"
#include "SPI.h"
#include "MD5.h" 


/*
Uncomment and set up if you want to use custom pins for the SPI communication

#define SD_CS          5
#define SPI_MOSI      23  
#define SPI_MISO      19
#define SPI_SCK       18
#define I2S_DOUT      25
#define I2S_BCLK      27
#define I2S_LRC       26

const char* chFileTest = "/atrtrwtm.mp3" ;
const char* chIOTestFile = "/testio.dat" ; 

#if !defined( TERMINAL_BAUD )
#define TERMINAL_BAUD_SPEED  115200
#else
#define TERMINAL_BAUD_SPEED  TERMINAL_BAUD
#endif

typedef struct 
{
	String 	FileStreamStr;
	size_t	uSizeFile ; 
} File_Property ;


void listDir(fs::FS &fs, const char *dirname, uint8_t levels) 
{
  Serial.printf("Listing directory: %s\r\n", dirname);

  File root = fs.open(dirname);
  if (!root) 
  {
    Serial.println("Failed to open directory\r");
    return;
  }
  if (!root.isDirectory()) 
  {
    Serial.println("Not a directory\r");
    return;
  }

  File file = root.openNextFile();
  while (file) {
    if (file.isDirectory()) 
    {
      Serial.print("  DIR : ");
      Serial.println(file.name());
      if (levels) 
      {
        listDir(fs, file.path(), levels - 1);
      }
    } 
    else 
    {
      Serial.print("  FILE: ");
      Serial.print(file.name());
      Serial.print("  SIZE: ");
      Serial.println(file.size() + String("\r") );
    }
    file = root.openNextFile();
  }
}

void createDir(fs::FS &fs, const char *path) 
{
  Serial.printf("Creating Dir: %s\r\n", path);
  if (fs.mkdir(path)) 
  {
    Serial.println("Dir created\r");
  } 
  else 
  {
    Serial.println("mkdir failed\r");
  }
}

void removeDir(fs::FS &fs, const char *path) 
{
  Serial.printf("Removing Dir: %s\r\n", path);
  if (fs.rmdir(path)) 
  {
    Serial.println("Dir removed\r");
  } 
  else 
  {
    Serial.println("rmdir failed\r");
  }
}

void readFile(fs::FS &fs, const char *path) 
{
  Serial.printf("Reading file: %s\r\n", path);

  File file = fs.open(path);
  if (!file) 
  {
    Serial.println("Failed to open file for reading\r");
    return;
  }

  Serial.print("Read from file: ");
  while (file.available()) 
  {
    Serial.write(file.read());
  }
  Serial.println("\r") ; 
  file.close();
}

File_Property readFileStr(fs::FS &fs, const char *path) 
{
  File_Property stProperty ; 
  //StrOut.reserve( fs.size() ) ;
  bool bFileContinue = true ; 
	
  File file = fs.open(path);
  if (!file) 
  {
    Serial.println("Failed to open file for reading\r");
    bFileContinue=false;
    stProperty.uSizeFile = 0 ; 
    stProperty.FileStreamStr = "" ;
  }

	if( bFileContinue )
	{
		Serial.printf("Reading file: %s\r\n", path );
		
		while (file.available()) 
		{
			//Serial.write(file.read());
			stProperty.FileStreamStr += file.read() ; 
		}
		stProperty.uSizeFile = stProperty.FileStreamStr.length() ;
		file.close();
		 
	}
		//FileStreamStr uSizeFile
  return stProperty ; 
}

void writeFile(fs::FS &fs, const char *path, const char *message) 
{
  Serial.printf("Writing file: %s\r\n", path);

  File file = fs.open(path, FILE_WRITE);
  if (!file) 
  {
    Serial.println("Failed to open file for writing\r");
    return;
  }
  if (file.print(message)) 
  {
    Serial.println("File written\r");
  } 
  else 
  {
    Serial.println("Write failed\r");
  }
  file.close();
}

void appendFile(fs::FS &fs, const char *path, const char *message) 
{
  Serial.printf("Appending to file: %s\r\n", path);

  File file = fs.open(path, FILE_APPEND);
  if (!file) 
  {
    Serial.println("Failed to open file for appending\r");
    return;
  }
  if (file.print(message)) 
  {
    Serial.println("Message appended\r");
  } 
  else 
  {
    Serial.println("Append failed\r");
  }
  file.close();
}

void renameFile(fs::FS &fs, const char *path1, const char *path2) 
{
  Serial.printf("Renaming file %s to %s\r\n", path1, path2);
  if (fs.rename(path1, path2)) 
  {
    Serial.println("File renamed\r");
  } 
  else 
  {
    Serial.println("Rename failed\r");
  }
}

void deleteFile(fs::FS &fs, const char *path) 
{
  Serial.printf("Deleting file: %s\n", path);
  if (fs.remove(path)) 
  {
    Serial.println("File deleted\r");
  } 
  else 
  {
    Serial.println("Delete failed\r");
  }
}

void testFileIO(fs::FS &fs, const char *path, const char *newpathfile) 
{
	Serial.println("Application testFileIO is destructive\r\n, don't use it on important file.\r");
  File file = fs.open(path);
  static uint8_t *buf;
  size_t len = 0;
  uint32_t start;
  uint32_t end ;
  uint32_t iIndexBuffer = 512 ;
  uint32_t bufferBlock = iIndexBuffer ;
  bool bErrorOpen = false ; 
  for( int iCount = bufferBlock ; iCount <= 16384 ; iCount+=iIndexBuffer )
  {
		buf = ( uint8_t* )( malloc( sizeof( uint8_t) * bufferBlock ) ) ;
		len = 0 ; 
		start = millis();
		end = start ; 
		file = fs.open(path, FILE_READ);
		if (file && !bErrorOpen ) 
		{
			len = file.size();
			size_t flen = len;
			start = millis();
			while (len) 
			{
				size_t toRead = len;
				if (toRead > bufferBlock) 
				{
					toRead = bufferBlock;
				}
				file.read(buf, toRead);
				len -= toRead;
			}
			end = millis() - start;
			Serial.printf("Block factor %u, read %u bytes read for %lu ms\r\n",bufferBlock, flen, end);
		} 
		else 
		{
			bErrorOpen=true;
		}
		bufferBlock+= iIndexBuffer ; 
		free( buf ) ;
		file.close();
	} 
	
	if( bErrorOpen )
	{ 
		Serial.println("Failed to open file for reading\r");
	}
	
  if( !bErrorOpen )
  {
		file = fs.open(newpathfile, FILE_WRITE);
		if (!file) 
		{
			Serial.println("Failed to open file for writing\r");
			bErrorOpen=false ;
		}

		if( !bErrorOpen )
		{
			size_t i;
			start = millis();
			for (i = 0; i < 2048; i++) 
			{
				file.write(buf, 512);
			}
			end = millis() - start;
			Serial.printf("%u bytes written for %lu ms\r\n", 2048 * 512, end);
			file.close();
		}
	}
}

String GetCardType( uint8_t SDType )
{
	String strMsgReturn ; 
	switch( SDType )
	{
		case CARD_MMC:
			strMsgReturn="MMC" ;  
			break ; 
		case CARD_SD:
			strMsgReturn="SDSC" ;  
			break ; 
		case CARD_SDHC:
			strMsgReturn="SDHC" ;  
			break ; 
		default:
			strMsgReturn="UNKNOWN" ;  
			break ; 
	}
	return strMsgReturn ;
}

void setup() 
{
  Serial.begin( TERMINAL_BAUD_SPEED );
  delay(5000) ; 
  Serial.println("Booting...\r");
  bool bFaildMount = false ; 
  bool bCardTypeFailed	= false ; 
  while (!Serial) 
  {
    delay(10);
  }

  SPI.begin(SPI_SCK, SPI_MISO, SPI_MOSI, SD_CS);
  if (!SD.begin(SD_CS)) 
  {
    Serial.println("Card Mount Failed\r");
    bFaildMount=true ; 
  }
  uint8_t cardType = SD.cardType();

  if (cardType == CARD_NONE) 
  {
    Serial.println("No SD card attached\r");
    bCardTypeFailed=true;
  }
	
	if( ( !bFaildMount ) && ( !bFaildMount ) )
	{
		Serial.printf("SD Card Type: %s\r\n", GetCardType( cardType ) );

		uint64_t cardSize = SD.cardSize() / (1024 * 1024);
		Serial.printf("SD Card Size: %lluMB\r\n", cardSize);

		listDir(SD, "/", 0);
		//createDir(SD, "/mydir");
		//listDir(SD, "/", 0);
		//removeDir(SD, "/mydir");
		//listDir(SD, "/", 2);
		//writeFile(SD, "/hello.txt", "Hello ");
		//appendFile(SD, "/hello.txt", "World!\n");
		//readFile(SD, "/hello.txt");
		//deleteFile(SD, "/foo.txt");
		//renameFile(SD, "/hello.txt", "/foo.txt");
		//readFile(SD, "/foo.txt");
		testFileIO(SD, chIOTestFile, "/new-io-file.dat" );
		Serial.printf("Total space: %lluMB\r\n", SD.totalBytes() / (1024 * 1024));
		Serial.printf("Used space: %lluMB\r\n", SD.usedBytes() / (1024 * 1024));

		/*
		 * MD5 Hash Section . 
		 * 
		 * */
		//char* FileName ; 
		//FileName = ( char* )( malloc( sizeof(chFileTest) ) )  ;  
		//FileName = chFileTest ; 
		File_Property stFileInfo ;
		stFileInfo = readFileStr(SD, chFileTest ) ; 
		unsigned char* hash=MD5::make_hash( ( char*)( stFileInfo.FileStreamStr.c_str() ) , (size_t)( stFileInfo.uSizeFile ) );
		char *md5str = MD5::make_digest(hash, 16);
		free(hash);
		Serial.println("MD5SUM for file " + String(chFileTest) + ":[" + String(md5str)+ "].\r" );

	}
	if( ( bFaildMount ) && ( bFaildMount ) )
	{
		Serial.println("No operation performed to have issues on both attemp to mount and accessing to type of SD.\r" );
	}
}

void loop() 
{
	
}

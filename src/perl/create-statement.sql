DROP TABLE IF EXISTS PackageInformation;
CREATE TABLE IF NOT EXISTS PackageInformation ( PkID	INTEGER NOT NULL UNIQUE, PackageName	TEXT NOT NULL, PackageStatus	TEXT NOT NULL, ProcessorType	TEXT NOT NULL DEFAULT 'None', PRIMARY KEY( PkID AUTOINCREMENT ) );
UPDATE sqlite_sequence set seq = 0 where  name='PackageInformation' ;

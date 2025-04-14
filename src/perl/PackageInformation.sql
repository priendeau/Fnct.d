CREATE TABLE "PackageInformation" (
	"PkID"	INTEGER NOT NULL UNIQUE,
	"PackageName"	TEXT NOT NULL,
	"PackageStatus"	TEXT NOT NULL,
	"ProcessorType"	TEXT NOT NULL DEFAULT 'None',
	PRIMARY KEY("PkID" AUTOINCREMENT)
)
CREATE TABLE sqlite_sequence(name,seq)

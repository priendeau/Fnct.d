from sqlobject import *

sqlhub.processConnection = connectionForURI('sqlite:/:memory:')

class Application(SQLObject):
  """
  Suppose to reflect this Sqlite schema:
  CREATE TABLE "Application" (
    "ApplicationPkID" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "GetUUPkID" INTEGER NOT NULL,
    "ApplicationName" TEXT NOT NULL DEFAULT ('GetUUID'),
    "TimeCreation" INTEGER NOT NULL,
    "UUIDSeqGen" INTEGER NOT NULL DEFAULT (1));
  """
  notNone=True
  class sqlmeta:
          notNone=True
          ApplicationPkID = MixedCaseStyle(longID=True)
  class sqlmeta:
          DecimalCol=True
          notNone=True
          GetUUPkID=IntCol()
  ApplicationName=StringCol(length=32)
  TimeCreation=DateTimeCol()
  UUIDSeqGen=StringCol(length=37)

class FKGetUUID(SQLObject):
  """
  Suppose to reflect this Sqlite schema:
  CREATE TABLE "FKGetUUID" (
    "UUIDPkId" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "ApplicationID" INTEGER NOT NULL,
    "UUIDInfo" TEXT,
    "LeaseType" TEXT);
  """
  class sqlmeta:
    UUIDPkId = MixedCaseStyle(longID=True)
  class sqlmeta:
    DecimalCol=True
    notNone=True
    ApplicationID=IntCol()
  UUIDInfo=StringCol(length=37)
  LeaseType=StringCol(length=256)


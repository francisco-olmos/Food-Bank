BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Food Bank USA','');
INSERT INTO "Account" VALUES(2,'Food Bank USA','1');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2020-11-30','Refrigerated','Mil','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'2031-11-19','Refrigerated','Cheddar','1');
INSERT INTO "Delivery_Item__c" VALUES(3,'2020-12-12','Non-refrigerated','Bark','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2020-11-30T20:00:00.000+0000','Scheduled','2');
COMMIT;

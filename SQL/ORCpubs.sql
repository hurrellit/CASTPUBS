/******************************************************************************/
/*** ----------------------------------------------------------------------- **/
/*** CAST Release Builder R2.2 Beta                       (generated script) **/
/*** ----------------------------------------------------------------------- **/
/******************************************************************************/
/* Server name    : ORCL_LOCAL                         */
/* Oracle version : 8.0.5.0.0                          */
/* Schema         : CASTPUBS                           */
/* Date & Time    : February 28, 2000 at 02:40 PM      */
/*******************************************************/



/******************************************************************************/
/** Generated Script (CREATE): Sequences                                     **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

CREATE SEQUENCE SEQ_303_1
 MINVALUE 1
 MAXVALUE 999999999999999999999999999
 INCREMENT BY 1
 START WITH 1
 CACHE 20
 NOORDER
 NOCYCLE
/

CREATE SEQUENCE SEQ_304_1
 MINVALUE 1
 MAXVALUE 999999999999999999999999999
 INCREMENT BY 1
 START WITH 1
 CACHE 20
 NOORDER
 NOCYCLE
/


/******************************************************************************/
/** Generated Script (CREATE): Tables                                        **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

CREATE TABLE AUTHORS (
  AU_ID                                         VARCHAR2(11)        NOT NULL  ,
  AU_LNAME                                      VARCHAR2(40)        NOT NULL  ,
  AU_FNAME                                      VARCHAR2(20)        NOT NULL  ,
  PHONE                                         CHAR(12)            NOT NULL  ,
  ADDRESS                                       VARCHAR2(40)        NULL      ,
  CITY                                          VARCHAR2(20)        NULL      ,
  STATE                                         CHAR(2)             NULL      ,
  COUNTRY                                       VARCHAR2(12)        NULL      ,
  POSTALCODE                                    CHAR(10)            NULL      
)
LOGGING
NOCACHE
/

CREATE TABLE DEFECTS (
  DEFECT_ID                                     NUMBER(6,0)         NOT NULL  ,
  TITLE_ID                                      VARCHAR2(6)         NOT NULL  ,
  DEFECT_TYPE                                   VARCHAR2(60)        NOT NULL  
)
LOGGING
NOCACHE
/

CREATE TABLE DISCOUNTS (
  DISCOUNTTYPE                                  VARCHAR2(40)        NOT NULL  ,
  STOR_ID                                       CHAR(4)             NOT NULL  ,
  LOWQTY                                        NUMBER(5,0)         NULL      ,
  HIGHQTY                                       NUMBER(5,0)         NULL      ,
  DISCOUNT                                      NUMBER(10,0)           NOT NULL  
)
LOGGING
NOCACHE
/

CREATE TABLE INVOICE (
  INVOICE_ID                                    CHAR(8)             NOT NULL  ,
  STOR_ID                                       CHAR(4)             NOT NULL  ,
  ORD_NUM                                       VARCHAR2(20)        NOT NULL  ,
  DT_INVOICE                                    DATE                NOT NULL  ,
  TOTAL_SALES                                   NUMBER(10,0)        NOT NULL  
)
LOGGING
NOCACHE
/

CREATE TABLE INVOICE_LINE (
  INV_LINE_ID                                   NUMBER(10,0)        NULL      ,
  INVOICE_ID                                    CHAR(8)             NOT NULL  ,
  TITLE_ID                                      VARCHAR2(6)         NOT NULL  ,
  QTY                                           NUMBER(10,0)        NOT NULL  
)
LOGGING
NOCACHE
/

CREATE TABLE ORDERS (
  ORDER_ID                                      NUMBER(10,0)        NOT NULL  ,
  STOR_ID                                       CHAR(4)             NOT NULL  ,
  ORDER_NUM                                     CHAR(10)            NOT NULL  ,
  DT_ISSUE                                      DATE                NOT NULL  ,
  DT_REC                                        DATE                NOT NULL  
)
LOGGING
NOCACHE
/

CREATE TABLE ORDER_LINE (
  ORD_LINE_ID                                   NUMBER(10,0)        NULL      ,
  ORDER_ID                                      NUMBER(10,0)        NOT NULL  ,
  TITLE_ID                                      VARCHAR2(6)         NOT NULL  ,
  QTY                                           NUMBER(10,0)        NOT NULL  
)
LOGGING
NOCACHE
/

CREATE TABLE PUBLISHERS (
  PUB_ID                                        CHAR(4)             NOT NULL  ,
  PUB_NAME                                      VARCHAR2(40)        NULL      ,
  CITY                                          VARCHAR2(20)        NULL      ,
  STATE                                         CHAR(2)             NULL      
)
LOGGING
NOCACHE
/

CREATE TABLE ROYSCHED (
  TITLE_ID                                      VARCHAR2(6)         NOT NULL  ,
  LORANGE                                       NUMBER(10,0)        NULL      ,
  HIRANGE                                       NUMBER(10,0)        NULL      ,
  ROYALTY                                       NUMBER(10,0)        NULL      
)
LOGGING
NOCACHE
/

CREATE TABLE SALES (
  STOR_ID                                       CHAR(4)             NOT NULL  ,
  ORD_NUM                                       VARCHAR2(20)        NOT NULL  ,
  DATE_                                         DATE                NOT NULL  
)
LOGGING
NOCACHE
/

CREATE TABLE SALESDETAIL (
  STOR_ID                                       CHAR(4)             NOT NULL  ,
  ORD_NUM                                       VARCHAR2(20)        NOT NULL  ,
  TITLE_ID                                      VARCHAR2(6)         NOT NULL  ,
  QTY                                           NUMBER(5,0)         NOT NULL  ,
  DISCOUNT                                      NUMBER(10,0)           NOT NULL  
)
LOGGING
NOCACHE
/

CREATE TABLE STOCK (
  STOR_ID                                       CHAR(4)             NOT NULL  ,
  STOCK_QTY                                     NUMBER(10,0)        NOT NULL  ,
  STOCK_HIGH_LEVEL                              NUMBER(10,0)        NOT NULL  ,
  STOCK_LOW_LEVEL                               NUMBER(10,0)        NOT NULL  ,
  STOCK_EMERGENCY                               NUMBER(1,0)         NOT NULL  
)
LOGGING
NOCACHE
/

CREATE TABLE STOCK_LINE (
  STOCK_LINE_ID                                 NUMBER(10,0)        NOT NULL  ,
  STOR_ID                                       CHAR(4)             NOT NULL  ,
  TITLE_ID                                      VARCHAR2(6)         NOT NULL  ,
  QTY                                           NUMBER(10,0)        NOT NULL  ,
  LINE_HIGH_LEVEL                               NUMBER(10,0)        NOT NULL  ,
  LINE_LOW_LEVEL                                NUMBER(10,0)        NOT NULL  
)
LOGGING
NOCACHE
/

CREATE TABLE STORES (
  STOR_ID                                       CHAR(4)             NOT NULL  ,
  STOR_NAME                                     VARCHAR2(40)        NULL      ,
  STOR_ADDRESS                                  VARCHAR2(40)        NULL      ,
  CITY                                          VARCHAR2(20)        NULL      ,
  STATE                                         CHAR(2)             NULL      ,
  COUNTRY                                       VARCHAR2(12)        NULL      ,
  POSTALCODE                                    CHAR(10)            NULL      ,
  PAYTERMS                                      VARCHAR2(12)        NULL      
)
LOGGING
NOCACHE
/

CREATE TABLE TITLEAUTHOR (
  AU_ID                                         VARCHAR2(11)        NOT NULL  ,
  TITLE_ID                                      VARCHAR2(6)         NOT NULL  ,
  AU_ORD                                        NUMBER(3,0)         NULL      ,
  ROYALTYPER                                    NUMBER(10,0)        NULL      
)
LOGGING
NOCACHE
/

CREATE TABLE TITLES (
  TITLE_ID                                      VARCHAR2(6)         NOT NULL  ,
  TITLE                                         VARCHAR2(80)        NOT NULL  ,
  TYPE_                                         CHAR(12)            NOT NULL  ,
  PUB_ID                                        CHAR(4)             NULL      ,
  PRICE                                         NUMBER(19,4)        NULL      ,
  ADVANCE                                       NUMBER(19,4)        NULL      ,
  TOTAL_SALES                                   NUMBER(10,0)        NULL      ,
  NOTES                                         VARCHAR2(200)       NULL      ,
  PUBDATE                                       DATE                NOT NULL  ,
  CONTRACT                                      NUMBER(1,0)         NOT NULL  
)
LOGGING
NOCACHE
/


/******************************************************************************/
/** Generated Script (CREATE): Check constraints                             **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

ALTER TABLE PUBLISHERS
ADD CONSTRAINT RUL_PUBLISHERS_PUB_ID CHECK(pub_id in ('1389', '0736', '0877', '1622', '1756', '1789')   or pub_id like '99[0-9][0-9]' )
/


/******************************************************************************/
/** Generated Script (CREATE): Primary/Unique key constraints                **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

ALTER TABLE AUTHORS
ADD CONSTRAINT AUIDIND UNIQUE(AU_ID)
USING INDEX
LOGGING
/

ALTER TABLE DISCOUNTS
ADD CONSTRAINT DISCOUNTS_1481955782 UNIQUE(DISCOUNTTYPE,STOR_ID)
USING INDEX
LOGGING
/

ALTER TABLE INVOICE
ADD CONSTRAINT PK_INVOICE UNIQUE(INVOICE_ID)
USING INDEX
LOGGING
/

ALTER TABLE ORDERS
ADD CONSTRAINT PK_ORDERS UNIQUE(ORDER_ID)
USING INDEX
LOGGING
/

ALTER TABLE PUBLISHERS
ADD CONSTRAINT PK_PUBLISHERS UNIQUE(PUB_ID)
USING INDEX
LOGGING
/

ALTER TABLE SALES
ADD CONSTRAINT PK_SALES UNIQUE(STOR_ID,ORD_NUM)
USING INDEX
LOGGING
/

ALTER TABLE STOCK
ADD CONSTRAINT PK_STOCK UNIQUE(STOR_ID)
USING INDEX
LOGGING
/

ALTER TABLE STOCK_LINE
ADD CONSTRAINT PK_STOCK_LINE UNIQUE(STOCK_LINE_ID,STOR_ID)
USING INDEX
LOGGING
/

ALTER TABLE STORES
ADD CONSTRAINT PK_STORES UNIQUE(STOR_ID)
USING INDEX
LOGGING
/

ALTER TABLE TITLES
ADD CONSTRAINT PK_TITLES UNIQUE(TITLE_ID)
USING INDEX
LOGGING
/


/******************************************************************************/
/** Generated Script (CREATE): Foreign key constraints                       **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

ALTER TABLE DEFECTS
ADD CONSTRAINT DEFECTS_TITLES FOREIGN KEY (TITLE_ID) REFERENCES TITLES(TITLE_ID)
/

ALTER TABLE DISCOUNTS
ADD CONSTRAINT FK__DISCOUNTS__STOR___5AEE82B9 FOREIGN KEY (STOR_ID) REFERENCES STORES(STOR_ID)
ON DELETE CASCADE
/

ALTER TABLE ROYSCHED
ADD CONSTRAINT FK__ROYSCHED__TITLE___59FA5E80 FOREIGN KEY (TITLE_ID) REFERENCES TITLES(TITLE_ID)
ON DELETE CASCADE
/

ALTER TABLE SALESDETAIL
ADD CONSTRAINT FK__SALESDETAIL__5535A963 FOREIGN KEY (STOR_ID,ORD_NUM) REFERENCES SALES(STOR_ID,ORD_NUM)
ON DELETE CASCADE
/

ALTER TABLE STOCK_LINE
ADD CONSTRAINT FK__STOCK_LIN__STOR___571DF1D5 FOREIGN KEY (STOR_ID) REFERENCES STOCK(STOR_ID)
ON DELETE CASCADE
/

ALTER TABLE STOCK_LINE
ADD CONSTRAINT FK__STOCK_LIN__TITLE__5812160E FOREIGN KEY (TITLE_ID) REFERENCES TITLES(TITLE_ID)
ON DELETE CASCADE
/

ALTER TABLE STOCK
ADD CONSTRAINT FK__STOCK__STOR_ID__5629CD9C FOREIGN KEY (STOR_ID) REFERENCES STORES(STOR_ID)
ON DELETE CASCADE
/

ALTER TABLE TITLEAUTHOR
ADD CONSTRAINT FK__TITLEAUTH__AU_ID__534D60F1 FOREIGN KEY (AU_ID) REFERENCES AUTHORS(AU_ID)
ON DELETE CASCADE
/

ALTER TABLE TITLEAUTHOR
ADD CONSTRAINT FK__TITLEAUTH__TITLE__5441852A FOREIGN KEY (TITLE_ID) REFERENCES TITLES(TITLE_ID)
ON DELETE CASCADE
/

ALTER TABLE TITLES
ADD CONSTRAINT FK__TITLES__PUB_ID__59063A47 FOREIGN KEY (PUB_ID) REFERENCES PUBLISHERS(PUB_ID)
ON DELETE CASCADE
/

ALTER TABLE INVOICE_LINE
ADD CONSTRAINT INVOICE_LINE_INVOICE FOREIGN KEY (INVOICE_ID) REFERENCES INVOICE(INVOICE_ID)
ON DELETE CASCADE
/

ALTER TABLE INVOICE_LINE
ADD CONSTRAINT INVOICE_LINE_TITLES FOREIGN KEY (TITLE_ID) REFERENCES TITLES(TITLE_ID)
ON DELETE CASCADE
/

ALTER TABLE INVOICE
ADD CONSTRAINT INVOICE_SALES FOREIGN KEY (STOR_ID,ORD_NUM) REFERENCES SALES(STOR_ID,ORD_NUM)
ON DELETE CASCADE
/

ALTER TABLE ORDER_LINE
ADD CONSTRAINT ORDER_LINE_ORDER FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID)
ON DELETE CASCADE
/

ALTER TABLE ORDER_LINE
ADD CONSTRAINT ORDER_LINE_TITLES FOREIGN KEY (TITLE_ID) REFERENCES TITLES(TITLE_ID)
ON DELETE CASCADE
/

ALTER TABLE SALESDETAIL
ADD CONSTRAINT SALESDETAIL_TITLES FOREIGN KEY (TITLE_ID) REFERENCES TITLES(TITLE_ID)
/


/******************************************************************************/
/** Generated Script (CREATE): Indexes                                       **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

CREATE INDEX AUNMIND
ON AUTHORS(AU_LNAME,AU_FNAME)
LOGGING
/

CREATE UNIQUE INDEX PK_INVOICE_LINE
ON INVOICE_LINE(INV_LINE_ID,INVOICE_ID)
LOGGING
/

CREATE UNIQUE INDEX PK_ORDER_LINE
ON ORDER_LINE(ORD_LINE_ID,ORDER_ID)
LOGGING
/

CREATE INDEX ROYTITIDIND
ON ROYSCHED(TITLE_ID)
LOGGING
/

CREATE INDEX SALESDETAILIND
ON SALESDETAIL(STOR_ID,ORD_NUM)
LOGGING
/

CREATE INDEX SALTITIDIND
ON SALESDETAIL(TITLE_ID)
LOGGING
/

CREATE INDEX TAUTIDIND
ON TITLEAUTHOR(AU_ID)
LOGGING
/

CREATE UNIQUE INDEX TITLEAUTHO_8125299281
ON TITLEAUTHOR(AU_ID,TITLE_ID)
LOGGING
/

CREATE INDEX TITLEIDIND
ON TITLEAUTHOR(TITLE_ID)
LOGGING
/

CREATE INDEX TITLEIND
ON TITLES(TITLE)
LOGGING
/


/******************************************************************************/
/** Generated Script (CREATE): Views                                         **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

CREATE OR REPLACE FORCE VIEW AUTHORIDCODES
(AU_ID)
AS
SELECT DISTINCT  au_id
 FROM titleauthor
/

CREATE OR REPLACE FORCE VIEW AVAILABLE_DELIVERY
(ORDER_ID,STOR_ID,TITLE_ID,QTY)
AS
Select
	O.order_id,
	O.stor_id,
	SL.title_id,
	SL.qty

From
	Orders O,
	Order_Line OL,
	Stock_Line SL
Where
	O.order_id = OL.order_id
	And O.stor_id = SL.stor_id
	And OL.title_id = SL.title_id
	And SL.qty > SL.line_low_level
/

CREATE OR REPLACE FORCE VIEW STOREIDVIEW
(STOR_ID,ORD_NUM)
AS
SELECT  S.stor_id, S.ord_num
 FROM sales S,salesdetail Det 
	WHERE S.stor_id = Det.stor_id 
	 And S.ord_num = Det.ord_num
/

CREATE OR REPLACE FORCE VIEW TITLEVIEW
(TITLE,AU_ORD,AU_LNAME,PRICE,TOTAL_SALES,PUB_ID)
AS
SELECT  title, au_ord, au_lname, price, total_sales, pub_id
 FROM authors,titles,titleauthor 
	WHERE authors.au_id = titleauthor.au_id 
	 and titles.title_id = titleauthor.title_id
/

CREATE OR REPLACE FORCE VIEW VIEWTITLEAUTHOR
(TITLE,TITLE_ID,AU_ID)
AS
Select 
	t1.TITLE, 
	t2.TITLE_ID, 
	t3.AU_ID
From   
	TITLES t1, 
	TITLEAUTHOR t2, 
	AUTHORS t3
Where  
	t2.AU_ID = t3.AU_ID
	And t1.TITLE_ID = t2.TITLE_ID
/


/******************************************************************************/
/** Generated Script (CREATE): Functions                                     **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

/******************************************************************************/
/** FUNCTION CREATENEWINVOICE                  * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION CREATENEWINVOICE 
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
Error 	NUMBER(10,0);
local_stor_id 	CHAR(4);
local_ord_num 	VARCHAR2(20);
Num 	NUMBER(10,0);
invoice_id 	CHAR(8);
dt_invoice 	DATE;
total_sales 	NUMBER(10,0);
CURSOR c IS SELECT  s.stor_id, s.ord_num
	 FROM sales s
/* For Read Read */;

/**********************************************************
*Procedure  Name: CreateNewInvoice
*Database: NEWPUBS
*Server: SYBDIZZY
*CAST SQL-Builder  R3.7
*
*Business Function : 
For each (stor_id, ord_num) from sales 
it generates an invoice described in 
the Invoice_Line table.
*Author BF: SYS		Date BF: 05/19/1998
*
*Author: SYS          Date: 10/29/1997
*  Comment: creation
*********************************************************/

BEGIN
	BEGIN
		NULL;/*DECLARE CURSOR c */
		BEGIN
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			StoO_crowcnt  := 0;
			Open c;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
		Fetch c Into CreateNewInvoice.local_stor_id, CreateNewInvoice.local_ord_num;

		IF c%NOTFOUND THEN
			StoO_sqlstatus := 2;
			StoO_fetchstatus := -1;
		ELSE
			StoO_sqlstatus := 0;
			StoO_fetchstatus := 0;
		END IF;
		CreateNewInvoice.Num :=  1;
		<<i_loop1>>
		WHILE  ( StoO_fetchstatus = 0) LOOP
		BEGIN
			CreateNewInvoice.invoice_id :=  TO_CHAR(CreateNewInvoice.Num) 
			   || '_' || CreateNewInvoice.local_stor_id || '12';
			CreateNewInvoice.dt_invoice :=  SYSDATE;
			CreateNewInvoice.total_sales :=  CreateNewInvoice.Num * 10 + CreateNewInvoice.Num;
			BEGIN
			CreateNewInvoice.Error:=I_Invoice(invoice_id=>CreateNewInvoice.invoice_id,
			 stor_id=>CreateNewInvoice.local_stor_id,
			 ord_num=>CreateNewInvoice.local_ord_num,
			 dt_invoice=>CreateNewInvoice.dt_invoice,
			 total_sales=>CreateNewInvoice.total_sales);
			EXCEPTION
				WHEN OTHERS THEN
					StoO_error := SQLCODE;

					StoO_errmsg := SQLERRM;

			END;
			IF  CreateNewInvoice.Error != 0 THEN
			BEGIN
				GOTO ERRORHANDLER;
			END;
			END IF;
			BEGIN
			CreateNewInvoice.Error:=CreateNewInvoiceLines(invoice_id=>CreateNewInvoice.invoice_id,
			 Num=>CreateNewInvoice.Num);
			EXCEPTION
				WHEN OTHERS THEN
					StoO_error := SQLCODE;

					StoO_errmsg := SQLERRM;

			END;
			IF  CreateNewInvoice.Error != 0 THEN
			BEGIN
				GOTO ERRORHANDLER;
			END;
			END IF;
			CreateNewInvoice.Num :=  CreateNewInvoice.Num + 1;
			Fetch c Into CreateNewInvoice.local_stor_id, CreateNewInvoice.local_ord_num;

			IF c%NOTFOUND THEN
				StoO_sqlstatus := 2;
				StoO_fetchstatus := -1;
			ELSE
				StoO_sqlstatus := 0;
				StoO_fetchstatus := 0;
			END IF;
		END;
		END LOOP;
		IF  ( StoO_fetchstatus = 1) THEN
		BEGIN
			DBMS_OUTPUT.PUT_LINE('error') ;
		END;
		END IF;
		BEGIN
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			Close c;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
		<<ERRORHANDLER>> NULL;
	
		RETURN CreateNewInvoice.Error;
	END;
	RETURN 0;
END CreateNewInvoice;
/

/******************************************************************************/
/** FUNCTION CREATENEWINVOICELINES             * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION CREATENEWINVOICELINES (
	INVOICE_ID IN CHAR,
	NUM IN NUMBER
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
Error 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: CreateNewInvoiceLines
*Database: NEWPUBS
*Server: SYBDIZZY
*CAST SQL-Builder  R3.7
*
*Business Function : Populates the Invoice_Line table according to each title_id from the titles table and according to each (stor_id,ord_num) create as a head of invoice.
*Author BF: SYS		Date BF: 10/29/1997
*
*Author: SYS          Date: 10/29/1997
*  Comment: creation
*********************************************************/

BEGIN
	BEGIN
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		INSERT INTO Invoice_Line (invoice_id, title_id, qty)SELECT  CreateNewInvoiceLines.invoice_id, t1.title_id, CreateNewInvoiceLines.Num 
			   * 10 + CreateNewInvoiceLines.Num
			 FROM titles t1;
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
		CreateNewInvoiceLines.Error :=  StoO_error;
		
		RETURN CreateNewInvoiceLines.Error;
	END;
	RETURN 0;
END CreateNewInvoiceLines;
/

/******************************************************************************/
/** FUNCTION CREATENEWORDERLINE                * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION CREATENEWORDERLINE (
	ORDER_ID IN NUMBER,
	RC1 IN OUT CREATENEWORDERLINEPKG.RCT1
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
Error 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: CreateNewInvoiceLines
*Database: NEWPUBS
*Server:  
*CAST SQL-Builder  R3.7
*
*Business Function : Populates the Order_Lines table for each title according to the oder_id
*Author BF: SYS		Date BF: 10/29/1997
*
*Author: SYS          Date: 10/29/1997
*  Comment: creation
*********************************************************/

BEGIN
	BEGIN
		OPEN RC1 FOR
		SELECT * FROM stores;
		BEGIN
			StoO_error   := 0;
			SELECT 1 INTO StoO_rowcnt FROM DUAL
			WHERE EXISTS (SELECT *
			 FROM stores
			);
			EXCEPTION
				WHEN OTHERS THEN
					StoO_rowcnt := 0;
					StoO_selcnt := 0;
					StoO_error := SQLCODE;
		END;
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		INSERT INTO Order_Line (order_id, title_id, qty)SELECT  CreateNewOrderLine.order_id, T.title_id, CreateNewOrderLine.order_id 
			   * 10
			 FROM titles T;
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
		CreateNewOrderLine.Error :=  StoO_error;
	
		RETURN CreateNewOrderLine.Error;
	END;
	RETURN 0;
END CreateNewOrderLine;
/

/******************************************************************************/
/** FUNCTION CREATENEWORDERS                   * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION CREATENEWORDERS 
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
Error 	NUMBER(10,0);
cur_stor_id 	CHAR(4);
num 	NUMBER(10,0);
order_num 	CHAR(10);
dt_issue 	DATE;
dt_rec 	DATE;
CURSOR c IS SELECT  sts.stor_id
	 FROM stores sts
/* For Read Read */;

/**********************************************************
*Procedure  Name: CreateNewOrders
*Database: NEWPUBS
*Server:  
*CAST SQL-Builder  R3.7
*
*Business Function : Populates the Order and Order_Line tables.
For all the stores, it generates one order with different lines.
Each of them is for ordering a title_id with a specific quantity.
*Author BF: AEL		Date BF: 05/01/1998
*
*Author: SYS          Date: 10/29/1997
*  Comment: creation
*********************************************************/

/* For each stor_id, it generates an order header */

BEGIN
	BEGIN
		NULL;/*DECLARE CURSOR c */
		BEGIN
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			StoO_crowcnt  := 0;
			Open c;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
		Fetch c Into CreateNewOrders.cur_stor_id;

		IF c%NOTFOUND THEN
			StoO_sqlstatus := 2;
			StoO_fetchstatus := -1;
		ELSE
			StoO_sqlstatus := 0;
			StoO_fetchstatus := 0;
		END IF;
		CreateNewOrders.num :=  1;
		<<i_loop1>>
		WHILE  ( StoO_fetchstatus = 0) LOOP
		BEGIN
			CreateNewOrders.order_num :=  CreateNewOrders.cur_stor_id || 'demo' 
			   || TO_CHAR(CreateNewOrders.num);
			CreateNewOrders.dt_issue :=  SYSDATE;
			CreateNewOrders.dt_rec :=  CreateNewOrders.dt_issue + 10;
			BEGIN
			CreateNewOrders.Error:=I_Orders(order_id=>CreateNewOrders.num,
			 stor_id=>CreateNewOrders.cur_stor_id,
			 order_num=>CreateNewOrders.order_num,
			 dt_issue=>CreateNewOrders.dt_issue,
			 dt_rec=>CreateNewOrders.dt_rec);
			EXCEPTION
				WHEN OTHERS THEN
					StoO_error := SQLCODE;

					StoO_errmsg := SQLERRM;

			END;
			IF  CreateNewOrders.Error != 0 THEN
			BEGIN
				GOTO ERRORHANDLER;
			END;
			END IF;
		
			IF  CreateNewOrders.Error != 0 THEN
			BEGIN
				GOTO ERRORHANDLER;
			END;
			END IF;
			CreateNewOrders.num :=  CreateNewOrders.num + 1;
			Fetch c Into CreateNewOrders.cur_stor_id;

			IF c%NOTFOUND THEN
				StoO_sqlstatus := 2;
				StoO_fetchstatus := -1;
			ELSE
				StoO_sqlstatus := 0;
				StoO_fetchstatus := 0;
			END IF;
		END;
		END LOOP;
		IF  ( StoO_fetchstatus = 1) THEN
		BEGIN
			DBMS_OUTPUT.PUT_LINE('error') ;
		END;
		END IF;
		BEGIN
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			Close c;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
		CreateNewOrders.Error :=  StoO_error;
		<<ERRORHANDLER>> NULL;

		RETURN CreateNewOrders.Error;
	END;
	RETURN 0;
END CreateNewOrders;
/

/******************************************************************************/
/** FUNCTION CREATEORDERSINVOICE               * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION CREATEORDERSINVOICE 
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
Error 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: CreateOrdersInvoice
*Database: NEWPUBS
*Server: SYBDIZZY
*CAST SQL-Builder  R3.7
*
*Business Function : Populates the table Orders, Order_Lines, Invoice, Invoice_Line.
Caution !!
It deletes first old Orders and Invoices.
*Author BF: SYS		Date BF: 05/01/1998
*
*Author: SYS          Date: 10/29/1997
*  Comment: creation
*Author: AEL          Date: 05/19/1998
*  Comment: Makes use of DeleteAllOrders and DeleteAllInvoice stored procedure,
according to ODV-10001-027A/12 Quality Manual.
*********************************************************/

/* First delete old Orders */

BEGIN
	BEGIN
		CreateOrdersInvoice.Error :=  0;
		BEGIN
		CreateOrdersInvoice.Error:=DeleteAllOrders;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error := SQLCODE;

				StoO_errmsg := SQLERRM;

		END;
		IF  CreateOrdersInvoice.Error != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Then Create the New Orders */

		END;
		END IF;
		
		IF  CreateOrdersInvoice.Error != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/*  First delete old Invoices */

		END;
		END IF;
		BEGIN
		CreateOrdersInvoice.Error:=DeleteAllInvoice;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error := SQLCODE;

				StoO_errmsg := SQLERRM;

		END;
		IF  CreateOrdersInvoice.Error != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
		END;
		END IF;
		BEGIN
		CreateOrdersInvoice.Error:=CreateNewInvoice;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error := SQLCODE;

				StoO_errmsg := SQLERRM;

		END;
		IF  CreateOrdersInvoice.Error != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Error Management */

		END;
		END IF;
		<<ERRORHANDLER>> NULL;

		RETURN CreateOrdersInvoice.Error;
	END;
	RETURN 0;
END CreateOrdersInvoice;
/

/******************************************************************************/
/** FUNCTION DELETEALLINVOICE                  * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION DELETEALLINVOICE 
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
Error 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: DeleteAllInvoice
*Database: NEWPUBS
*Server: SYBDIZZY
*CAST SQL-Builder  R3.7
*
*Business Function : Delete All Invoices.
This procedure deletes all Invoice_Line rows and Invoice rows.
See ODV-10001-027A/12 Quality Manual.

*Author BF: SYS		Date BF: 05/19/1998
*
*Author: SYS          Date: 05/19/1998
*  Comment: creation
*********************************************************/

/*  First delete old Invoices */

BEGIN
	BEGIN
		DeleteAllInvoice.Error :=  0;
		
		BEGIN
		StoO_selcnt := 0;
		StoO_error  := 0;
		StoO_rowcnt := 0;
		SELECT 1 INTO StoO_selcnt
		FROM DUAL
		WHERE  EXISTS (
			SELECT  1
			 FROM Invoice );
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_selcnt := 0;
				StoO_error := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
		IF StoO_selcnt != 0 THEN
		BEGIN
			BEGIN
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			DELETE  Invoice_Line ;
			StoO_rowcnt := SQL%ROWCOUNT;
			EXCEPTION
				WHEN OTHERS THEN
					StoO_error  := SQLCODE;
					StoO_errmsg := SQLERRM;
			END;
			BEGIN
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			DELETE  Invoice ;
			StoO_rowcnt := SQL%ROWCOUNT;
			EXCEPTION
				WHEN OTHERS THEN
					StoO_error  := SQLCODE;
					StoO_errmsg := SQLERRM;
			END;
		END;
		END IF;
		IF  StoO_error != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Error Management */

		END;
		END IF;
		<<ERRORHANDLER>> NULL;

		RETURN DeleteAllInvoice.Error;
	END;
	RETURN 0;
END DeleteAllInvoice;
/

/******************************************************************************/
/** FUNCTION DELETEALLORDERS                   * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION DELETEALLORDERS 
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
Error 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: DeleteAllOrders
*Database: NEWPUBS
*Server: SYBDIZZY
*CAST SQL-Builder  R3.7
*
*Business Function : Delete All Orders.
This procedure deletes all Order_Lines rows and Orders rows.
See ODV-10001-027A/12 Quality Manual.

*Author BF: AEL		Date BF: 05/19/1998
*
*Author: AEL          Date: 05/19/1998
*  Comment: creation
*********************************************************/

BEGIN
	BEGIN
		DeleteAllOrders.Error :=  0;
		
		BEGIN
		StoO_selcnt := 0;
		StoO_error  := 0;
		StoO_rowcnt := 0;
		SELECT 1 INTO StoO_selcnt
		FROM DUAL
		WHERE  EXISTS (
			SELECT  1
			 FROM Orders );
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_selcnt := 0;
				StoO_error := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
		IF StoO_selcnt != 0 THEN
		BEGIN
			BEGIN
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			DELETE  Order_Line ;
			StoO_rowcnt := SQL%ROWCOUNT;
			EXCEPTION
				WHEN OTHERS THEN
					StoO_error  := SQLCODE;
					StoO_errmsg := SQLERRM;
			END;
			BEGIN
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			DELETE  Orders ;
			StoO_rowcnt := SQL%ROWCOUNT;
			EXCEPTION
				WHEN OTHERS THEN
					StoO_error  := SQLCODE;
					StoO_errmsg := SQLERRM;
			END;
		END;
		END IF;
		IF  StoO_error != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Error Management */

		END;
		END IF;
		<<ERRORHANDLER>> NULL;
		
		RETURN DeleteAllOrders.Error;
	END;
	RETURN 0;
END DeleteAllOrders;
/

/******************************************************************************/
/** FUNCTION DELIVERORDER                      * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION DELIVERORDER (
	ORDER_ID IN NUMBER Default NULL,
	STATE IN CHAR Default NULL
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
Error 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: DeliverOrder
*Database: NEWPUBS
*Server:  
*CAST SQL-Builder  R3.7
*
*Business Function : Manages the Delivery of a specified Order in a specified State.
It calls DeliverOrderLine Stored Procedure which is responsible 
for checking the availability of the ordered titles.
*Author BF: AEL		Date BF: 06/19/1998
*
*Author: AEL          Date: 06/19/1998
*  Comment: creation
*********************************************************/

BEGIN
	BEGIN
		DeliverOrder.Error :=  0;
			/*CONVERTING SELECT  INTO temp_Available_DeliveryDeliver*/
		        /*TO INSERT INTO temp_Available_DeliveryDeliver*/
		BEGIN
			StoO_rowcnt := 0;
			StoO_selcnt := 0;
			StoO_error  := 0;

			INSERT INTO Available_Delivery
			SELECT  

O.order_id, O.stor_id, SL.title_id, SL.qty FROM Orders O, Order_Line OL, Stock_Line SL 
			WHERE O.order_id = OL.order_id 
			 And O.stor_id = SL.stor_id 
			 And OL.title_id = SL.title_id 
			 And SL.qty > SL.line_low_level;
			StoO_rowcnt := SQL%ROWCOUNT;

			EXCEPTION
				WHEN TOO_MANY_ROWS THEN
					StoO_rowcnt := 2;
				WHEN OTHERS THEN
					StoO_rowcnt := 0;
					StoO_selcnt := 0;
					StoO_error := SQLCODE;
					StoO_errmsg := SQLERRM;
		END;
		DeliverOrder.Error :=  StoO_error;
		IF  DeliverOrder.Error != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
		END;
		END IF;

		IF  DeliverOrder.Error != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
		END;
		END IF;
		/*[SPCONV-ERR(53)]:DROP TABLE temp_Available_DeliveryDeliver statement ignored*/

		NULL;
		<<ERRORHANDLER>> NULL;

		RETURN DeliverOrder.Error;
	END;
	RETURN 0;
END DeliverOrder;
/

/******************************************************************************/
/** FUNCTION DELIVERORDERLINE                  * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION DELIVERORDERLINE (
	RC1 IN OUT DELIVERORDERLINEPKG.RCT1
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
Error 	NUMBER(10,0);
UF1_rowid 	ROWID;
UF1_oval1 	Stock_Line.qty%TYPE;

CURSOR UF1_cursor IS 
	SELECT SL.ROWID, ( SL.qty - Av.qty ) FROM Stock_Line SL, Available_Delivery Av
	WHERE SL.title_id = Av.title_id
	FOR UPDATE OF SL.qty;


BEGIN
	BEGIN
		DeliverOrderLine.Error :=  0;
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		DELETE  Order_Line
			WHERE ROWID IN
			(SELECT OL.ROWID FROM Order_Line OL, Available_Delivery Av
			
			WHERE OL.order_id = Av.order_id);
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
/* Update Stock_Line according to Deliver sheet */

		
		OPEN UF1_cursor;
		LOOP
			FETCH UF1_cursor INTO UF1_rowid, UF1_oval1;
			EXIT WHEN UF1_cursor%NOTFOUND;
			BEGIN
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			UPDATE Stock_Line SL
			SET qty = UF1_oval1
			WHERE ROWID = UF1_rowid;
			StoO_rowcnt := SQL%ROWCOUNT;
			EXCEPTION
				WHEN OTHERS THEN
					StoO_error  := SQLCODE;
					StoO_errmsg := SQLERRM;
			END;
		END LOOP;
		CLOSE UF1_cursor;
/* int */

/* Get Delivery List */

		OPEN RC1 FOR
		SELECT T.title,  T.title_id FROM titles T, Available_Delivery Av 
		WHERE T.title_id = Av.title_id;
		BEGIN
			StoO_error   := 0;
			SELECT 1 INTO StoO_rowcnt FROM DUAL
			WHERE EXISTS (SELECT T.title, T.title_id
			 FROM titles T, Available_Delivery Av 
			WHERE T.title_id = Av.title_id
			);
			EXCEPTION
				WHEN OTHERS THEN
					StoO_rowcnt := 0;
					StoO_selcnt := 0;
					StoO_error := SQLCODE;
		END;
		DeliverOrderLine.Error :=  StoO_error;
		IF  DeliverOrderLine.Error != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
		END;
		END IF;
		<<ERRORHANDLER>> NULL;
	
		RETURN DeliverOrderLine.Error;
	END;
	RETURN 0;
END DeliverOrderLine;
/

/******************************************************************************/
/** FUNCTION D_INVOICE_LINE                    * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION D_INVOICE_LINE (
	INV_LINE_ID IN NUMBER,
	INVOICE_ID IN CHAR
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
TranOpened 	NUMBER(1,0);
SqlError 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: D_Invoice_Line
*Database: NEWPUBS
*Server: SYBDIZZY

*CAST WORKBENCH  SQL-Builder  R3.5
*
*Business Function :  DB-Builder generated procedure
*Author BF: SYS		Date BF: 05/19/1998
*
*********************************************************/

/* Transaction handling */

BEGIN
	BEGIN

		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		DELETE  Invoice_Line 
			WHERE inv_line_id = D_Invoice_Line.inv_line_id 
			 and invoice_id = D_Invoice_Line.invoice_id;
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
/* SQL-Server errors handling */

		D_Invoice_Line.SqlError :=  StoO_error;
		IF  D_Invoice_Line.SqlError != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Transaction handling */

		END;
		END IF;
		<<ERRORHANDLER>> NULL;
		IF  D_Invoice_Line.TranOpened = 0 THEN
		BEGIN
			IF  D_Invoice_Line.SqlError = 0 THEN
				COMMIT WORK;
			ELSE
				ROLLBACK WORK;
			END IF;
/* SQL-Server errors handling */

		END;
		END IF;

		RETURN D_Invoice_Line.SqlError;
	END;
	RETURN 0;
END D_Invoice_Line;
/

/******************************************************************************/
/** FUNCTION E_STOCK                           * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION E_STOCK (
	LINECOUNT IN OUT NUMBER,
	STOR_ID IN CHAR,
	RC1 IN OUT E_STOCKPKG.RCT1
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
SqlError 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: E_Stock
*Database: NEWPUBS
*Server: SYBDIZZY
*CAST WORKBENCH  SQL-Builder  R3.5
*
*Business Function :  DB-Builder generated procedure
*Author BF: SYS		Date BF: 05/01/1998
*
*********************************************************/

BEGIN
	BEGIN
		BEGIN
			StoO_rowcnt := 0;
			StoO_selcnt := 0;
			StoO_error  := 0;

			SELECT   count(*)
			INTO E_Stock.linecount FROM Stock 
			WHERE stor_id = E_Stock.stor_id;
			StoO_rowcnt := SQL%ROWCOUNT;

			EXCEPTION
				WHEN TOO_MANY_ROWS THEN
					StoO_rowcnt := 2;
				WHEN OTHERS THEN
					StoO_rowcnt := 0;
					StoO_selcnt := 0;
					StoO_error := SQLCODE;
					StoO_errmsg := SQLERRM;
		END;
/* SQL-Server errors handling */

		E_Stock.SqlError :=  StoO_error;
	
	
		<<ERRORHANDLER>> NULL;

		RETURN E_Stock.SqlError;
	END;
	RETURN 0;
END E_Stock;
/

/******************************************************************************/
/** FUNCTION I_INVOICE                         * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION I_INVOICE (
	INVOICE_ID IN CHAR,
	STOR_ID IN CHAR,
	ORD_NUM IN VARCHAR2,
	DT_INVOICE IN DATE,
	TOTAL_SALES IN NUMBER
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
TranOpened 	NUMBER(1,0);
SqlError 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: I_Invoice
*Database: NEWPUBS
*Server:  
*CAST SQL-Builder  R3.7
*
*Business Function :  DB-Builder generated procedure
*Author BF: SYS		Date BF: 10/29/1997
*
*********************************************************/

/* Transaction handling */

BEGIN
	BEGIN
	
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		INSERT INTO Invoice (invoice_id, stor_id, ord_num, dt_invoice, total_sales)VALUES (I_Invoice.invoice_id, I_Invoice.stor_id, I_Invoice.ord_num, 
			   I_Invoice.dt_invoice, I_Invoice.total_sales);
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
/* SQL-Server errors handling */

		I_Invoice.SqlError :=  StoO_error;
		IF  I_Invoice.SqlError != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Transaction handling */

		END;
		END IF;
		<<ERRORHANDLER>> NULL;
		IF  I_Invoice.TranOpened = 0 THEN
		BEGIN
			IF  I_Invoice.SqlError = 0 THEN
				COMMIT WORK;
			ELSE
				ROLLBACK WORK;
			END IF;
/* SQL-Server errors handling */

		END;
		END IF;
	
		RETURN I_Invoice.SqlError;
	END;
	RETURN 0;
END I_Invoice;
/

/******************************************************************************/
/** FUNCTION I_INVOICE_LINE                    * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION I_INVOICE_LINE (
	INV_LINE_ID IN NUMBER,
	INVOICE_ID IN CHAR,
	TITLE_ID IN VARCHAR2,
	QTY IN NUMBER
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
TranOpened 	NUMBER(1,0);
SqlError 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: I_Invoice_Line
*Database: NEWPUBS
*Server: 
*CAST WORKBENCH  SQL-Builder  R3.5
*
*Business Function :  DB-Builder generated procedure
*Author BF: SYS		Date BF: 10/29/1997
*
*********************************************************/

/* Transaction handling */

BEGIN
	BEGIN
	
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		INSERT INTO Invoice_Line (inv_line_id, invoice_id, title_id, qty)VALUES (I_Invoice_Line.inv_line_id, I_Invoice_Line.invoice_id, 
			   I_Invoice_Line.title_id, I_Invoice_Line.qty);
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
/* SQL-Server errors handling */

		I_Invoice_Line.SqlError :=  StoO_error;
		IF  I_Invoice_Line.SqlError != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Transaction handling */

		END;
		END IF;
		<<ERRORHANDLER>> NULL;
		IF  I_Invoice_Line.TranOpened = 0 THEN
		BEGIN
			IF  I_Invoice_Line.SqlError = 0 THEN
				COMMIT WORK;
			ELSE
				ROLLBACK WORK;
			END IF;
/* SQL-Server errors handling */

		END;
		END IF;
	
		RETURN I_Invoice_Line.SqlError;
	END;
	RETURN 0;
END I_Invoice_Line;
/

/******************************************************************************/
/** FUNCTION I_ORDERS                          * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION I_ORDERS (
	ORDER_ID IN NUMBER,
	STOR_ID IN CHAR,
	ORDER_NUM IN CHAR,
	DT_ISSUE IN DATE,
	DT_REC IN DATE
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
TranOpened 	NUMBER(1,0);
SqlError 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: I_Orders
*Database: NEWPUBS
*Server: 
*CAST WORKBENCH  SQL-Builder  R3.5
*
*Business Function :  DB-Builder generated procedure
*Author BF: SYS		Date BF: 10/29/1997
*
*********************************************************/

/* Transaction handling */

BEGIN
	BEGIN
		
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		INSERT INTO Orders (order_id, stor_id, order_num, dt_issue, dt_rec)VALUES (I_Orders.order_id, I_Orders.stor_id, I_Orders.order_num, 
			   I_Orders.dt_issue, I_Orders.dt_rec);
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
/* SQL-Server errors handling */

		I_Orders.SqlError :=  StoO_error;
		IF  I_Orders.SqlError != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Transaction handling */

		END;
		END IF;
		<<ERRORHANDLER>> NULL;
		IF  I_Orders.TranOpened = 0 THEN
		BEGIN
			IF  I_Orders.SqlError = 0 THEN
				COMMIT WORK;
			ELSE
				ROLLBACK WORK;
			END IF;
/* SQL-Server errors handling */

		END;
		END IF;
	
		RETURN I_Orders.SqlError;
	END;
	RETURN 0;
END I_Orders;
/

/******************************************************************************/
/** FUNCTION I_ORDER_LINE                      * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION I_ORDER_LINE (
	ORD_LINE_ID IN NUMBER,
	ORDER_ID IN NUMBER,
	TITLE_ID IN VARCHAR2,
	QTY IN NUMBER
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
TranOpened 	NUMBER(1,0);
SqlError 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: I_Order_Line
*Database: NEWPUBS
*Server: 
*CAST WORKBENCH  SQL-Builder  R3.5
*
*Business Function :  DB-Builder generated procedure
*Author BF: SYS		Date BF: 10/29/1997
*
*********************************************************/

/* Transaction handling */

BEGIN
	BEGIN
		
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		INSERT INTO Order_Line (ord_line_id, order_id, title_id, qty)VALUES (I_Order_Line.ord_line_id, I_Order_Line.order_id, I_Order_Line.title_id, 
			   I_Order_Line.qty);
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
/* SQL-Server errors handling */

		I_Order_Line.SqlError :=  StoO_error;
		IF  I_Order_Line.SqlError != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Transaction handling */

		END;
		END IF;
		<<ERRORHANDLER>> NULL;
		IF  I_Order_Line.TranOpened = 0 THEN
		BEGIN
			IF  I_Order_Line.SqlError = 0 THEN
				COMMIT WORK;
			ELSE
				ROLLBACK WORK;
			END IF;
/* SQL-Server errors handling */

		END;
		END IF;
	
		RETURN I_Order_Line.SqlError;
	END;
	RETURN 0;
END I_Order_Line;
/

/******************************************************************************/
/** FUNCTION I_STOCK                           * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION I_STOCK (
	STOR_ID IN CHAR,
	STOCK_QTY IN NUMBER,
	STOCK_HIGH_LEVEL IN NUMBER,
	STOCK_LOW_LEVEL IN NUMBER,
	STOCK_EMERGENCY IN NUMBER
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
TranOpened 	NUMBER(1,0);
SqlError 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: I_Stock
*Database: NEWPUBS
*Server: SYBDIZZY
*CAST WORKBENCH  SQL-Builder  R3.5
*
*Business Function :  DB-Builder generated procedure
*Author BF: SYS		Date BF: 05/01/1998
*
*********************************************************/

/* Transaction handling */

BEGIN
	BEGIN
		
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		INSERT INTO Stock (stor_id, stock_qty, stock_high_level, stock_low_level, stock_emergency)VALUES (I_Stock.stor_id, I_Stock.stock_qty, I_Stock.stock_high_level, 
			   I_Stock.stock_low_level, I_Stock.stock_emergency);
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
/* SQL-Server errors handling */

		I_Stock.SqlError :=  StoO_error;
		IF  I_Stock.SqlError != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Transaction handling */

		END;
		END IF;
		<<ERRORHANDLER>> NULL;
		IF  I_Stock.TranOpened = 0 THEN
		BEGIN
			IF  I_Stock.SqlError = 0 THEN
				COMMIT WORK;
			ELSE
				ROLLBACK WORK;
			END IF;
/* SQL-Server errors handling */

		END;
		END IF;
		
		RETURN I_Stock.SqlError;
	END;
	RETURN 0;
END I_Stock;
/

/******************************************************************************/
/** FUNCTION I_STOCK_LINE                      * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION I_STOCK_LINE (
	STOCK_LINE_ID IN NUMBER,
	STOR_ID IN CHAR,
	TITLE_ID IN VARCHAR2,
	QTY IN NUMBER
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
TranOpened 	NUMBER(1,0);
SqlError 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: I_Stock_Line
*Database: NEWPUBS
*Server: 
*CAST WORKBENCH  SQL-Builder  R3.5
*
*Business Function :  DB-Builder generated procedure
*Author BF: SYS		Date BF: 10/29/1997
*
*********************************************************/

/* Transaction handling */

BEGIN
	BEGIN
		
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		INSERT INTO Stock_Line (Stock_Line_id, stor_id, title_id, qty)VALUES (I_Stock_Line.Stock_Line_id, I_Stock_Line.stor_id, I_Stock_Line.title_id, 
			   I_Stock_Line.qty);
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
/* SQL-Server errors handling */

		I_Stock_Line.SqlError :=  StoO_error;
		IF  I_Stock_Line.SqlError != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Transaction handling */

		END;
		END IF;
		<<ERRORHANDLER>> NULL;
		IF  I_Stock_Line.TranOpened = 0 THEN
		BEGIN
			IF  I_Stock_Line.SqlError = 0 THEN
				COMMIT WORK;
			ELSE
				ROLLBACK WORK;
			END IF;
/* SQL-Server errors handling */

		END;
		END IF;
	
		RETURN I_Stock_Line.SqlError;
	END;
	RETURN 0;
END I_Stock_Line;
/

/******************************************************************************/
/** FUNCTION STOREID_PROC                      * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION STOREID_PROC(
stor_id 	CHAR ,
RC1 	IN OUT STOREID_PROCPkg.RCT1)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
BEGIN
	OPEN RC1 FOR
	SELECT stor_name,  stor_id,  stor_address,  city,  state,  postalcode,  country FROM stores 
	WHERE stor_id = storeid_proc.stor_id;
	BEGIN
		StoO_error   := 0;
		SELECT 1 INTO StoO_rowcnt FROM DUAL
		WHERE EXISTS (SELECT stor_name, stor_id, stor_address, city, state, postalcode, 
		   country
		 FROM stores 
		WHERE stor_id = storeid_proc.stor_id
		);
		EXCEPTION
			WHEN OTHERS THEN
				StoO_rowcnt := 0;
				StoO_selcnt := 0;
				StoO_error := SQLCODE;
	END;
	RETURN StoO_rowcnt;
	RETURN 0;
END storeid_proc;
/

/******************************************************************************/
/** FUNCTION STORENAME_PROC                    * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION STORENAME_PROC(
stor_name 	VARCHAR2 ,
RC1 	IN OUT STORENAME_PROCPkg.RCT1)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
lowered_name 	VARCHAR2(40);
BEGIN
	storename_proc.lowered_name :=  LOWER(storename_proc.stor_name) 
	   || '%';
 /*[SPCONV-ERR(14)]:(LIKE) if using '[' Manual conversion required*/

	OPEN RC1 FOR
	SELECT stor_name,  stor_id,  stor_address,  city,  state,  postalcode,  country FROM stores 
	WHERE LOWER(stor_name)  LIKE storename_proc.lowered_name;
	BEGIN
		StoO_error   := 0;
		SELECT 1 INTO StoO_rowcnt FROM DUAL
		WHERE EXISTS (SELECT stor_name, stor_id, stor_address, city, state, postalcode, 
		   country
		 FROM stores 
		WHERE LOWER(stor_name)  LIKE storename_proc.lowered_name
		);
		EXCEPTION
			WHEN OTHERS THEN
				StoO_rowcnt := 0;
				StoO_selcnt := 0;
				StoO_error := SQLCODE;
	END;
	RETURN StoO_rowcnt;
	RETURN 0;
END storename_proc;
/

/******************************************************************************/
/** FUNCTION TITLEID_PROC                      * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION TITLEID_PROC(
in_title_id 	IN VARCHAR2 ,
RC1 	IN OUT TITLEID_PROCPkg.RCT1)
RETURN INTEGER
AS
title_id 	VARCHAR2(80);
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
/**********************************************************
*Procedure  Name: titleid_proc
*Database: NEWPUBS
*Server:  
*CAST SQL-Builder  R3.5
*********************************************************/

BEGIN
	titleid_proc.title_id := titleid_proc.in_title_id;
	BEGIN
		titleid_proc.title_id :=  LOWER(titleid_proc.title_id) || '%';
 /*[SPCONV-ERR(16)]:(LIKE) if using '[' Manual conversion required*/

		OPEN RC1 FOR
		SELECT title,  title_id,  price FROM titles 
		WHERE LOWER(title_id)  LIKE titleid_proc.title_id;
		BEGIN
			StoO_error   := 0;
			SELECT 1 INTO StoO_rowcnt FROM DUAL
			WHERE EXISTS (SELECT title, title_id, price
			 FROM titles 
			WHERE LOWER(title_id)  LIKE titleid_proc.title_id
			);
			EXCEPTION
				WHEN OTHERS THEN
					StoO_rowcnt := 0;
					StoO_selcnt := 0;
					StoO_error := SQLCODE;
		END;
		RETURN StoO_rowcnt;
	END;
	RETURN 0;
END titleid_proc;
/

/******************************************************************************/
/** FUNCTION TITLE_PROC                        * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION TITLE_PROC(
in_title 	IN VARCHAR2 ,
RC1 	IN OUT TITLE_PROCPkg.RCT1)
RETURN INTEGER
AS
title 	VARCHAR2(80);
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
BEGIN
	title_proc.title := title_proc.in_title;
	title_proc.title :=  LOWER(title_proc.title) || '%';
 /*[SPCONV-ERR(6)]:(LIKE) if using '[' Manual conversion required*/

	OPEN RC1 FOR
	SELECT title,  title_id,  price FROM titles 
	WHERE LOWER(title)  LIKE title_proc.title;
	BEGIN
		StoO_error   := 0;
		SELECT 1 INTO StoO_rowcnt FROM DUAL
		WHERE EXISTS (SELECT title, title_id, price
		 FROM titles 
		WHERE LOWER(title)  LIKE title_proc.title
		);
		EXCEPTION
			WHEN OTHERS THEN
				StoO_rowcnt := 0;
				StoO_selcnt := 0;
				StoO_error := SQLCODE;
	END;
	RETURN StoO_rowcnt;
	RETURN 0;
END title_proc;
/

/******************************************************************************/
/** FUNCTION U_STOCK                           * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE FUNCTION U_STOCK (
	STOR_ID IN CHAR,
	STOCK_QTY IN NUMBER,
	STOCK_HIGH_LEVEL IN NUMBER,
	STOCK_LOW_LEVEL IN NUMBER,
	STOCK_EMERGENCY IN NUMBER
)
RETURN INTEGER
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
TranOpened 	NUMBER(1,0);
SqlError 	NUMBER(10,0);
/**********************************************************
*Procedure  Name: U_Stock
*Database: NEWPUBS
*Server: SYBDIZZY
*CAST WORKBENCH  SQL-Builder  R3.5
*
*Business Function :  DB-Builder generated procedure
*Author BF: SYS		Date BF: 05/01/1998
*
*********************************************************/

/* Transaction handling */

BEGIN
	BEGIN
	
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		UPDATE Stock
		SET stock_qty = U_Stock.stock_qty,
		stock_high_level = U_Stock.stock_high_level,
		stock_low_level = U_Stock.stock_low_level,
		stock_emergency = U_Stock.stock_emergency
		
		WHERE stor_id = U_Stock.stor_id;
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
/* SQL-Server errors handling */

		U_Stock.SqlError :=  StoO_error;
		IF  U_Stock.SqlError != 0 THEN
		BEGIN
			GOTO ERRORHANDLER;
/* Transaction handling */

		END;
		END IF;
		<<ERRORHANDLER>> NULL;
		IF  U_Stock.TranOpened = 0 THEN
		BEGIN
			IF  U_Stock.SqlError = 0 THEN
				COMMIT WORK;
			ELSE
				ROLLBACK WORK;
			END IF;
/* SQL-Server errors handling */

		END;
		END IF;

		RETURN U_Stock.SqlError;
	END;
	RETURN 0;
END U_Stock;
/


/******************************************************************************/
/** Generated Script (CREATE): Procedures                                    **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

/******************************************************************************/
/** PROCEDURE BYROYALTY                         * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE BYROYALTY(
percentage 	NUMBER ,
RC1 	IN OUT BYROYALTYPkg.RCT1)
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
/**********************************************************
*Procedure  Name: byroyalty
*Database: NEWPUBS
*Server:  
*CAST SQL-Builder  R3.7
*********************************************************/

BEGIN
	BEGIN
		OPEN RC1 FOR
		SELECT au_id FROM titleauthor 
		WHERE titleauthor.royaltyper = byroyalty.percentage;
	END;
END byroyalty;
/

/******************************************************************************/
/** PROCEDURE CALLCREATESALE                    * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE CALLCREATESALE (
	RC1 in out CALLCREATESALEPKG.RCT1
)
As
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
cur_ord_num 	VARCHAR2(20);

Cursor c Is Select  SD.ord_num
	 From salesdetail SD;

Begin
begin

		Begin
		CreateSale(in_qty=>1, in_discount=>1);
		Exception
			When Others Then
				StoO_error := Sqlcode;

				StoO_errmsg := Sqlerrm;

		End;
		Open RC1 For
		Select * From sales;

		Begin
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			StoO_crowcnt  := 0;
			Open c;
		Exception
			When Others Then
				StoO_error  := Sqlcode;
				StoO_errmsg := Sqlerrm;
		End;
		Fetch c Into CallCreateSale.cur_ord_num;

		If c%NOTFOUND Then
			StoO_sqlstatus := 2;
			StoO_fetchstatus := -1;
		Else
			StoO_sqlstatus := 0;
			StoO_fetchstatus := 0;
		End If;
		<<i_loop1>>
		While  ( StoO_fetchstatus = 0) Loop
		Begin
/***** fill here cursor processing *****/

/***** end of processing *****/

			StoO_rowcnt := 0;
			StoO_selcnt := 0;
			StoO_error  := 0;
	
			Fetch c Into CallCreateSale.cur_ord_num;

			If c%NOTFOUND Then
				StoO_sqlstatus := 2;
				StoO_fetchstatus := -1;
			Else
				StoO_sqlstatus := 0;
				StoO_fetchstatus := 0;
			End If;
		End;
		End Loop;
		If  ( StoO_fetchstatus = 1) Then
		Begin
			DBMS_OUTPUT.PUT_LINE('error') ;
		End;
		End If;
		Begin
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			Close c;
		Exception
			When Others Then
				StoO_error  := Sqlcode;
				StoO_errmsg := Sqlerrm;
		End;
	End;
End CallCreateSale;
/

/******************************************************************************/
/** PROCEDURE CREATESALE                        * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE CREATESALE (
	IN_QTY in number Default null,
	IN_DISCOUNT in number Default null
)
As
qty 	NUMBER(5,0);
discount 	NUMBER;
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
stor_id 	CHAR(4);
ordernum 	CHAR(20);
datejour 	DATE;
dattmp 	VARCHAR2(15);
title_id 	VARCHAR2(20);
max_ 	NUMBER(10,0);
counter 	NUMBER(10,0);
pub_id 	CHAR(4);
cur_au_id 	VARCHAR2(11);
cur_au_lname 	VARCHAR2(40);
cur_au_fname 	VARCHAR2(20);
RC1 CREATESALEPKG.RCT1;
Cursor autcur Is Select  t1.au_id, t1.au_lname, t1.au_fname
	 From authors t1;


StoO_version 	DATE;




Begin
	Select CREATED Into StoO_version From SM$VERSION;
	CreateSale.qty := CreateSale.in_qty;
	CreateSale.discount := CreateSale.in_discount;
	Begin
		StoO_rowcnt := 0;
		StoO_selcnt := 0;
		StoO_error  := 0;
		Open RC1 For
		Select  StoO_version, Null, Null, Null, Null, Null, Null
		From DUAL;
		If  CreateSale.discount Is Null Then
		Begin
			CreateSale.discount :=  1;
		End;
		End If;
		If  CreateSale.qty Is Null Then
		Begin
			CreateSale.qty :=  1;
		End;
		End If;
		CreateSale.datejour :=  Sysdate;
/* Creation of temporary table for sales calculation and checking */

/* -------------------------------------------------------------- */

		
		Begin
			StoO_rowcnt := 0;
			StoO_selcnt := 0;
			StoO_error  := 0;

			Select   Max(stor_id)
			Into CreateSale.stor_id From sales;
			StoO_rowcnt := Sql%ROWCOUNT;

			Exception
				When TOO_MANY_ROWS Then
					StoO_rowcnt := 2;
				When Others Then
					StoO_rowcnt := 0;
					StoO_selcnt := 0;
					StoO_error := Sqlcode;
					StoO_errmsg := Sqlerrm;
		End;
/* End of temporary table manipulation */

/* ---------------------------------- */

		Begin
			StoO_rowcnt := 0;
			StoO_selcnt := 0;
			StoO_error  := 0;

			Select   Max(ord_num)
			Into CreateSale.ordernum From sales;
			StoO_rowcnt := Sql%ROWCOUNT;

			Exception
				When TOO_MANY_ROWS Then
					StoO_rowcnt := 2;
				When Others Then
					StoO_rowcnt := 0;
					StoO_selcnt := 0;
					StoO_error := Sqlcode;
					StoO_errmsg := Sqlerrm;
		End;
		Begin
			StoO_rowcnt := 0;
			StoO_selcnt := 0;
			StoO_error  := 0;

			Select   To_char(Count(*)) || CreateSale.ordernum
			Into CreateSale.ordernum From sales;
			StoO_rowcnt := Sql%ROWCOUNT;

			Exception
				When TOO_MANY_ROWS Then
					StoO_rowcnt := 2;
				When Others Then
					StoO_rowcnt := 0;
					StoO_selcnt := 0;
					StoO_error := Sqlcode;
					StoO_errmsg := Sqlerrm;
		End;
/* Sales Management : */

/* ------------------ */

/* You need to call first  insert_sales_proc procedure
   then you must call insert_salesdetail_proc procedure 
   to update details.
*/

		Begin
		insert_sales_proc(stor_id=>CreateSale.stor_id,
		 ordernum=>CreateSale.ordernum,
		 orderdate=>CreateSale.datejour);
		Exception
			When Others Then
				StoO_error := Sqlcode;

				StoO_errmsg := Sqlerrm;

		End;
		Begin
			StoO_rowcnt := 0;
			StoO_selcnt := 0;
			StoO_error  := 0;

			Select   Max(title_id)
			Into CreateSale.title_id From titles;
			StoO_rowcnt := Sql%ROWCOUNT;

			Exception
				When TOO_MANY_ROWS Then
					StoO_rowcnt := 2;
				When Others Then
					StoO_rowcnt := 0;
					StoO_selcnt := 0;
					StoO_error := Sqlcode;
					StoO_errmsg := Sqlerrm;
		End;
		Begin
		insert_salesdetail_proc(stor_id=>CreateSale.stor_id,
		 ord_num=>CreateSale.ordernum,
		 title_id=>CreateSale.title_id,
		 qty=>CreateSale.qty,
		 discount=>CreateSale.discount);
		Exception
			When Others Then
				StoO_error := Sqlcode;

				StoO_errmsg := Sqlerrm;

		End;
		Begin
			StoO_rowcnt := 0;
			StoO_selcnt := 0;
			StoO_error  := 0;

			Select   Count(*)
			Into CreateSale.max_ From authors;
			StoO_rowcnt := Sql%ROWCOUNT;

			Exception
				When TOO_MANY_ROWS Then
					StoO_rowcnt := 2;
				When Others Then
					StoO_rowcnt := 0;
					StoO_selcnt := 0;
					StoO_error := Sqlcode;
					StoO_errmsg := Sqlerrm;
		End;
		Null;/*DECLARE CURSOR autcur */
		Begin
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			StoO_crowcnt  := 0;
			Open autcur;
		Exception
			When Others Then
				StoO_error  := Sqlcode;
				StoO_errmsg := Sqlerrm;
		End;
		Fetch autcur Into CreateSale.cur_au_id, CreateSale.cur_au_lname, CreateSale.cur_au_fname;

		If autcur%NOTFOUND Then
			StoO_sqlstatus := 2;
			StoO_fetchstatus := -1;
		Else
			StoO_sqlstatus := 0;
			StoO_fetchstatus := 0;
		End If;
/* Counter Inistialization */

		CreateSale.counter :=  0;
		<<i_loop1>>
		While  ( StoO_fetchstatus = 0 And   CreateSale.counter <= CreateSale.max_) Loop
		Begin
/***** fill here cursor processing *****/

			CreateSale.counter :=  CreateSale.counter + 1;
			CreateSale.dattmp :=  Rpad(To_char(Sysdate,'hh:mm:ss'), 15, ' 
			   ');
/***** end of processing *****/

			Fetch autcur Into CreateSale.cur_au_id, CreateSale.cur_au_lname, CreateSale.cur_au_fname;

			If autcur%NOTFOUND Then
				StoO_sqlstatus := 2;
				StoO_fetchstatus := -1;
			Else
				StoO_sqlstatus := 0;
				StoO_fetchstatus := 0;
			End If;
		End;
		End Loop;
		If  ( StoO_fetchstatus != 2) Then
		Begin
			DBMS_OUTPUT.PUT_LINE('error') ;
		End;
		End If;
		Begin
			StoO_error   := 0;
			StoO_rowcnt  := 0;
			Close autcur;
		Exception
			When Others Then
				StoO_error  := Sqlcode;
				StoO_errmsg := Sqlerrm;
		End;
	
		Open RC1 For
		Select Null, ta.au_id,  au.au_lname,  au.au_fname,  au.phone,  tit.title,  pub.pub_name From publishers pub, authors au, titles tit, titleauthor ta 
		Where au.au_id = ta.au_id 
		 And tit.title_id = ta.title_id 
		 And pub.pub_id = tit.pub_id;
	End;

End CreateSale;
/

/******************************************************************************/
/** PROCEDURE DISCOUNT_PROC                     * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE DISCOUNT_PROC(
RC1 	IN OUT DISCOUNT_PROCPkg.RCT1)
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
/**********************************************************
*Procedure  Name: discount_proc
*Database: NEWPUBS
*Server:  
*CAST SQL-Builder  R3.5
*********************************************************/

BEGIN
	BEGIN
		OPEN RC1 FOR
		SELECT discounttype,  stor_id,  lowqty,  highqty,  discount FROM discounts;
	END;
END discount_proc;
/

/******************************************************************************/
/** PROCEDURE GETALLSALES                       * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE GETALLSALES (
	RC1 IN OUT GETALLSALESPKG.RCT1
)
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
/**********************************************************
*Procedure  Name: GetAllSales
*Database: NEWPUBS
*Server:  
*CAST SQL-Builder  R3.5
*
*Business Function : Gets all the sales
*Author BF: SYS		Date BF: 10/01/1997
*
*Author: SYS          Date: 10/01/1997
*  Comment: creation
*********************************************************/

BEGIN
	BEGIN
		OPEN RC1 FOR
		SELECT t3.title_id,  t3.title,  t2.qty,  t2.discount FROM sales t1, salesdetail t2, titles t3 
		WHERE t1.stor_id = t2.stor_id 
		 And t1.ord_num = t2.ord_num 
		 And t2.title_id = t3.title_id;
	END;
END GetAllSales;
/

/******************************************************************************/
/** PROCEDURE GETTITLEAUTHORS                   * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE GETTITLEAUTHORS (
	P_AUFNAME IN VARCHAR2,
	P_AULNAME IN VARCHAR2,
	RC1 IN OUT GETTITLEAUTHORSPKG.RCT1
)
As
Begin
	
		Open RC1 For
		Select t2.au_lname,  t2.au_fname,  t1.title,  t1.title_id 
		From titles t1, authors t2, titleauthor t3 
		Where t1.title_id = t3.title_id 
		 And t2.au_id = t3.au_id 
		 And Upper(Ltrim(Rtrim(t2.au_lname)))  Like Upper(Ltrim(Rtrim(P_aulname)))   
		 And Upper(Ltrim(Rtrim(t2.au_fname)))  Like Upper(Ltrim(Rtrim(P_aufname)));

End GetTitleAuthors;
/

/******************************************************************************/
/** PROCEDURE HISTORY_PROC                      * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE HISTORY_PROC(
stor_id 	CHAR ,
RC1 	IN OUT HISTORY_PROCPkg.RCT1)
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
/* create procs for use by APT Sales Example */

BEGIN
	OPEN RC1 FOR
	SELECT DATE_,  sales.ord_num,  qty,  salesdetail.title_id,  discount,  price,  qty * price * ( 1 - discount / 100 )  "total" FROM sales, salesdetail, titles 
	WHERE sales.stor_id = history_proc.stor_id 
	 and sales.ord_num = salesdetail.ord_num 
	 and titles.title_id = salesdetail.title_id 
	ORDER BY DATE_ DESC, sales.ord_num ;
END history_proc;
/

/******************************************************************************/
/** PROCEDURE INSERT_SALESDETAIL_PROC           * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE INSERT_SALESDETAIL_PROC(
stor_id 	CHAR ,
ord_num 	VARCHAR2 ,
title_id 	VARCHAR2 ,
qty 	NUMBER ,
discount 	NUMBER )
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
/**********************************************************
*Procedure  Name: insert_salesdetail_proc
*Database: NEWPUBS
*Server: SYBDIZZY
*CAST SQL-Builder  R3.7
*
*Business Function : Insert Salesdetail.
*Author BF: SYS		Date BF: 04/24/1998
*
*Author: SYS          Date: 04/24/1998
*  Comment: Speed up the salesdetail insertion, please. 
*File Path:
* D:\Projects\PublisherApp\Server\insert_salesdetail_proc.PRO
*********************************************************/

BEGIN
	BEGIN
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		INSERT INTO salesdetail VALUES (insert_salesdetail_proc.stor_id, insert_salesdetail_proc.ord_num, 
			   insert_salesdetail_proc.title_id, insert_salesdetail_proc.qty, 
			   insert_salesdetail_proc.discount);
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
	END;
END insert_salesdetail_proc;
/

/******************************************************************************/
/** PROCEDURE INSERT_SALES_PROC                 * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE INSERT_SALES_PROC(
stor_id 	CHAR ,
ordernum 	VARCHAR2 ,
orderdate 	VARCHAR2 )
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
/**********************************************************
*Procedure  Name: insert_sales_proc
*Database: CASTpubs
*Server: FRESU
*CAST SQL-Builder  R3.7
*
*Business Function : Insert a Sale row with appropriate Result Set.
*Author BF: SYS		Date BF: 06/05/1998
*
*Author: SYS          Date: 06/05/1998
*  Comment: Modification of the Result Set according to Client Side.
*File Path:
* D:\Projects\PublisherApp\Server\insert_sale_proc.PRO
*********************************************************/

BEGIN
	BEGIN
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		INSERT INTO sales VALUES (insert_sales_proc.stor_id, insert_sales_proc.ordernum, 
			   insert_sales_proc.orderdate);
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
	END;
END insert_sales_proc;
/

/******************************************************************************/
/** PROCEDURE NEWCREATESALE                     * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE NEWCREATESALE (
	TITLE_ID IN VARCHAR2,
	QTY IN NUMBER Default NULL,
	DISCOUNT IN NUMBER Default NULL
)
AS
stor_id char(4);
ord_num varchar2(20);


BEGIN

select  to_char(max (to_number(stor_id)) + 1) into stor_id  from sales;
ord_num :=  concat(concat(stor_id,'_') , to_char(sysdate,'DD-MM-YY'));

insert_sales_proc(stor_id=>stor_id,
		 ordernum=>ord_num,
		 orderdate=>sysdate);
 

insert_salesdetail_proc(stor_id=>stor_id,
          ord_num=>ord_num 	,
          title_id=>title_id  ,
          qty=>qty 		,
          discount=>discount);
             
END NewCreateSale;
/

/******************************************************************************/
/** PROCEDURE SALESMANAGEMENT                   * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE SALESMANAGEMENT (
	SWITCH IN NUMBER
)
AS
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
RC2 CALLCREATESALEPKG.RCT1;
RC3 GETALLSALESPKG.RCT1;
/**********************************************************
*Procedure  Name: SalesManagement
*Database: NEWPUBS
*Server:  
*CAST SQL-Builder  R3.5
*
*Business Function : If 0 is passed then creates a sale else if 1 is passed then it retrieves the sales about a title
*Author BF: SYS		Date BF: 15/09/1997
*
*Author: SYS          Date: 15/09/1997
*  Comment: creation
*File Path:
* D:\Projects\PublisherApp\Server\SalesManagement.PRO
*********************************************************/

BEGIN
	BEGIN
		IF  SalesManagement.Switch = 0 THEN
			BEGIN
			CallCreateSale (RC1=>RC2);
			EXCEPTION
				WHEN OTHERS THEN
					StoO_error := SQLCODE;

					StoO_errmsg := SQLERRM;

			END;
		ELSE
			BEGIN
			GetAllSales (RC1=>RC3);
			EXCEPTION
				WHEN OTHERS THEN
					StoO_error := SQLCODE;

					StoO_errmsg := SQLERRM;

			END;
		END IF;
	END;
END SalesManagement;
/


/******************************************************************************/
/** PROCEDURE GETAUTHORS                        * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PROCEDURE GETAUTHORS (
	RC1 IN OUT GETAUTHORSPKG.RCT1
)
AS

BEGIN
	BEGIN
		OPEN RC1 FOR
	      Select t1.AU_LNAME, t1.AU_FNAME
 		  From AUTHORS t1
          Order By  t1.AU_LNAME  Asc;
	END;
END GetAuthors;
/

/******************************************************************************/
/** Generated Script (CREATE): Packages                                      **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

/******************************************************************************/
/** PACKAGE BYROYALTYPKG                        * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE BYROYALTYPKG AS
TYPE RT1 IS RECORD (
	au_id		 titleauthor.au_id%TYPE
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/

/******************************************************************************/
/** PACKAGE CALLCREATESALEPKG                   * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE CALLCREATESALEPKG AS
TYPE RCT1 IS REF CURSOR RETURN sales%ROWTYPE;

END;
/

/******************************************************************************/
/** PACKAGE CREATENEWORDERLINEPKG               * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE CREATENEWORDERLINEPKG AS
TYPE RCT1 IS REF CURSOR RETURN stores%ROWTYPE;

END;
/

/******************************************************************************/
/** PACKAGE CREATESALEPKG                       * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE CREATESALEPKG AS
TYPE RT1 IS RECORD (
	StoO_version		 DATE,
	au_id		 titleauthor.au_id%TYPE,
	au_lname		 authors.au_lname%TYPE,
	au_fname		 authors.au_fname%TYPE,
	phone		 authors.phone%TYPE,
	title		 titles.title%TYPE,
	pub_name		 publishers.pub_name%TYPE
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/

/******************************************************************************/
/** PACKAGE DEFECTSPKG                          * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE DEFECTSPKG 
Is
	NumberOfDefects number(6);
	
	Function Ctrl_Defect(VarTitleID In varchar2) Return number;

	Procedure Add_Defect(VarTitleID In varchar2, VarDefectDesc in varchar2);

	Procedure Calc_Number_Defects;
	

End;
/

/******************************************************************************/
/** PACKAGE DELIVERORDERLINEPKG                 * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE DELIVERORDERLINEPKG AS
TYPE RT1 IS RECORD (
	title		 titles.title%TYPE,
	title_id		 titles.title_id%TYPE
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/

/******************************************************************************/
/** PACKAGE DISCOUNT_PROCPKG                    * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE DISCOUNT_PROCPKG AS
TYPE RT1 IS RECORD (
	discounttype		 discounts.discounttype%TYPE,
	stor_id		 discounts.stor_id%TYPE,
	lowqty		 discounts.lowqty%TYPE,
	highqty		 discounts.highqty%TYPE,
	discount		 discounts.discount%TYPE
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/

/******************************************************************************/
/** PACKAGE E_STOCKPKG                          * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE E_STOCKPKG AS
TYPE RT1 IS RECORD (
	linecount		 NUMBER(10,0)
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/

/******************************************************************************/
/** PACKAGE GETALLSALESPKG                      * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE GETALLSALESPKG AS
TYPE RT1 IS RECORD (
	title_id		 titles.title_id%TYPE,
	title		 titles.title%TYPE,
	qty		 salesdetail.qty%TYPE,
	discount		 salesdetail.discount%TYPE
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/

/******************************************************************************/
/** PACKAGE GETALLTITLESPKG                     * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE GETALLTITLESPKG 
AS
 type RC is record (
  aulname authors.au_lname%type,
  aufname authors.au_fname%type); 
TYPE RCT IS REF CURSOR RETURN RC;

END;
/

/******************************************************************************/
/** PACKAGE GETTITLEAUTHORSPKG                  * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE GETTITLEAUTHORSPKG AS
TYPE RT1 IS RECORD (
	au_lname		 authors.au_lname%TYPE,
	au_fname		 authors.au_fname%TYPE,
	title		 titles.title%TYPE,
	title_id		 titles.title_id%TYPE
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/


/******************************************************************************/
/** PACKAGE GETAUTHORSPKG                       * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE GETAUTHORSPKG 
AS
TYPE RT1 IS RECORD (
	au_lname		 authors.au_lname%TYPE,
	au_fname 		 authors.au_fname%TYPE
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/


/******************************************************************************/
/** PACKAGE HISTORY_PROCPKG                     * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE HISTORY_PROCPKG AS
TYPE RT1 IS RECORD (
	DATE_		 VARCHAR2(255),
	ord_num		 sales.ord_num%TYPE,
	qty		 VARCHAR2(255),
	title_id		 salesdetail.title_id%TYPE,
	discount		 VARCHAR2(255),
	price		 VARCHAR2(255),
	qty_REP_1		 VARCHAR2(255)
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/

/******************************************************************************/
/** PACKAGE STOREID_PROCPKG                     * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE STOREID_PROCPKG AS
TYPE RT1 IS RECORD (
	stor_name		 stores.stor_name%TYPE,
	stor_id		 CHAR(4),
	stor_address		 stores.stor_address%TYPE,
	city		 stores.city%TYPE,
	state		 stores.state%TYPE,
	postalcode		 stores.postalcode%TYPE,
	country		 stores.country%TYPE
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/

/******************************************************************************/
/** PACKAGE STORENAME_PROCPKG                   * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE STORENAME_PROCPKG AS
TYPE RT1 IS RECORD (
	stor_name		 VARCHAR2(40),
	stor_id		 stores.stor_id%TYPE,
	stor_address		 stores.stor_address%TYPE,
	city		 stores.city%TYPE,
	state		 stores.state%TYPE,
	postalcode		 stores.postalcode%TYPE,
	country		 stores.country%TYPE
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/

/******************************************************************************/
/** PACKAGE TITLEID_PROCPKG                     * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE TITLEID_PROCPKG AS
TYPE RT1 IS RECORD (
	title		 titles.title%TYPE,
	title_id		 VARCHAR2(80),
	price		 titles.price%TYPE
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/

/******************************************************************************/
/** PACKAGE TITLE_PROCPKG                       * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE TITLE_PROCPKG AS
TYPE RT1 IS RECORD (
	title		 VARCHAR2(80),
	title_id		 titles.title_id%TYPE,
	price		 titles.price%TYPE
	);
TYPE RCT1 IS REF CURSOR RETURN RT1;

END;
/


/******************************************************************************/
/** Generated Script (CREATE): Package bodies                                **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

/******************************************************************************/
/** PACKAGE BODY DEFECTSPKG                     * Object from Data Dictionary */
/******************************************************************************/

CREATE OR REPLACE PACKAGE BODY DEFECTSPKG 
Is
ADEFECT_ID NUMBER;

	Function Ctrl_Defect(VarTitleID In varchar2)
	Return number
	Is
	Status number;
	VarDEFECT_ID varchar2(6);
	Begin
		VarDEFECT_ID :='Nothing';
		Status := Null;
		
		Select DEFECT_ID into VarDEFECT_ID
		from DEFECTS
		where TITLE_ID = VarTitleID;
		
		if VarDEFECT_ID != 'Nothing'
		then 
			Status := 0;
		else
			Status := 1;
		end if;
		
		return Status;
		
	End Ctrl_Defect;
	
	Function Ctrl_Title(VarTitleID In varchar2)
	Return number
	Is
	Status number;
	Begin
		Status := Null;
			
		Select TITLE_ID into Status
		From TITLES
		Where TITLE_ID = VarTitleID;
			
		return Status;
		
	End Ctrl_Title;
	
	Procedure Add_Defect(VarTitleID In varchar2, VarDefectDesc in varchar2)
	Is
		VarDefectID Varchar2(6);
		Status number;
	Begin
		
		Status := Ctrl_Title (VarTitleID);
		
		If Status = 1
		then
		begin
		
			select max(DEFECT_ID)
			Into VarDefectID
			from DEFECTS;
		
			VarDefectID := VarDefectID+1;
				
			Insert Into DEFECTS ( 
				DEFECT_ID, 
				TITLE_ID, 
				DEFECT_TYPE )
			Values ( 
				VarDefectID,	/* NUMBER */
				VarTitleID,		/* VARCHAR2(6) */
				VarDefectDesc	/* VARCHAR2(60) */
				);
		end;
			
		end if;

	end Add_Defect;
	
	Procedure Calc_Number_Defects
	is
	Num_Defects number(6);
	begin
		Select count(*)
		into Num_Defects
		from DEFECTS;
		
		NumberOfDefects := Num_Defects;
		
	end Calc_Number_Defects;
	
	
	
End;
/


/******************************************************************************/
/** Generated Script (CREATE): Triggers                                      **/
/** ------------------------------------------------------------------------ **/
/******************************************************************************/

/******************************************************************************/
/** TRIGGER DELTITLE                           * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE TRIGGER DELTITLE
AFTER DELETE ON TITLES
FOR EACH ROW 
DECLARE
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER := 1;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
BEGIN
	
	BEGIN
	StoO_selcnt := 0;
	StoO_error  := 0;
	StoO_rowcnt := 0;
	SELECT 1 INTO StoO_selcnt
	FROM DUAL
	WHERE  0 < (
		SELECT  count(*)
		 FROM salesdetail 
		WHERE salesdetail.title_id = :OLD.title_id );
	StoO_rowcnt := SQL%ROWCOUNT;
	EXCEPTION
		WHEN OTHERS THEN
			StoO_selcnt := 0;
			StoO_error := SQLCODE;
			StoO_errmsg := SQLERRM;
	END;
	IF StoO_selcnt != 0 THEN
	BEGIN
		RAISE_APPLICATION_ERROR(-20500,'Trigger forces a rollback');
		ROLLBACK;
		DBMS_OUTPUT.PUT_LINE('You can''t delete a title with sales.') ;
	END;
	END IF;
END deltitle;
/

/******************************************************************************/
/** TRIGGER ON_DELETE_AUTHORS                  * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE TRIGGER ON_DELETE_AUTHORS
AFTER DELETE ON AUTHORS
FOR EACH ROW 
DECLARE
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER := 1;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;


BEGIN
	BEGIN
		
		BEGIN
		StoO_selcnt := 0;
		StoO_error  := 0;
		StoO_rowcnt := 0;
		SELECT 1 INTO StoO_selcnt
		FROM DUAL
		WHERE  EXISTS (
			SELECT  1
			 FROM titleauthor ta 
			WHERE :OLD.au_id = ta.au_id );
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_selcnt := 0;
				StoO_error := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
		IF StoO_selcnt != 0 THEN
		BEGIN
			DBMS_OUTPUT.PUT_LINE('Existing titles for one of the author') ;
			RAISE_APPLICATION_ERROR(-20500,'Trigger forces a rollback');
			ROLLBACK;
		END;
		END IF;
	END;
END on_delete_authors;
/

/******************************************************************************/
/** TRIGGER TOTALSALES_TRIG                    * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE TRIGGER TOTALSALES_TRIG
AFTER INSERT OR DELETE OR UPDATE OF QTY ON SALESDETAIL
FOR EACH ROW 
DECLARE
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER := 1;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
tempVar1 	VARCHAR2(255);
tempVar2 	VARCHAR2(255);
/**********************************************************
*Trigger  Name: totalsales_trig
*Database: NEWPUBS
*Server:  
*CAST SQL-Builder  R3.5
*********************************************************/

/* Save processing:  return if there are no rows affected */

BEGIN
	BEGIN
		IF  StoO_rowcnt = 0 THEN
		BEGIN
			RETURN ;
/* add all the new values */

/* use isnull:  a null value in the titles table means 
**  'no sales yet' not 'sales unknown'
*/

		END;
		END IF;
		/****** Subqueries in select list is not supported in Oracle. *******/
		/****** Manual conversion required *******/
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		SELECT SUM(:NEW.qty)
		INTO tempVar1
		FROM DUAL;
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN TOO_MANY_ROWS THEN
				StoO_rowcnt  := 2;
			WHEN OTHERS THEN
				StoO_rowcnt  := 0;
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		UPDATE titles
		SET total_sales = NVL(total_sales, 0) + tempVar1;
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
/* remove all values being deleted or updated */

		/****** Subqueries in select list is not supported in Oracle. *******/
		/****** Manual conversion required *******/
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		SELECT SUM(:OLD.qty)
		INTO tempVar2
		FROM DUAL;
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN TOO_MANY_ROWS THEN
				StoO_rowcnt  := 2;
			WHEN OTHERS THEN
				StoO_rowcnt  := 0;
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
		BEGIN
		StoO_error   := 0;
		StoO_rowcnt  := 0;
		UPDATE titles
		SET total_sales = NVL(total_sales, 0) - tempVar2;
		StoO_rowcnt := SQL%ROWCOUNT;
		EXCEPTION
			WHEN OTHERS THEN
				StoO_error  := SQLCODE;
				StoO_errmsg := SQLERRM;
		END;
	END;
END totalsales_trig;
/

/******************************************************************************/
/** TRIGGER UPDTITLES                          * Object from Data Dictionary  */
/******************************************************************************/

CREATE OR REPLACE TRIGGER UPDTITLES
AFTER UPDATE OF TITLE_ID ON TITLES
FOR EACH ROW 
DECLARE
StoO_selcnt	INTEGER;
StoO_error 	INTEGER;
StoO_rowcnt	INTEGER := 1;
StoO_crowcnt	INTEGER := 0;
StoO_fetchstatus	INTEGER := 0;
StoO_errmsg	VARCHAR2(255);
StoO_sqlstatus	INTEGER;
titleid 	VARCHAR2(6);

BEGIN
	BEGIN
		BEGIN
			StoO_rowcnt := 0;
			StoO_selcnt := 0;
			StoO_error  := 0;

		SELECT   :NEW.title_id
			INTO titleid FROM DUAL;
			StoO_rowcnt := SQL%ROWCOUNT;

			EXCEPTION
				WHEN TOO_MANY_ROWS THEN
					StoO_rowcnt := 2;
				WHEN OTHERS THEN
					StoO_rowcnt := 0;
					StoO_selcnt := 0;
					StoO_error := SQLCODE;
					StoO_errmsg := SQLERRM;
		END;
		IF  titleid is NULL THEN
		BEGIN
			titleid :=  '';
		END;
		END IF;
	END;
END updtitles;
/


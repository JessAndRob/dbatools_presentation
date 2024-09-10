/*
	Created by  using dbatools Export-DbaScript for objects on dbatools1 at 03/02/2023 11:37:03
	See https://dbatools.io/Export-DbaScript for more information
*/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [app1] WITH PASSWORD=N'hiIGH8ORAhEnes4ehV2AI3Wx4Tyvo/ahsI4tRLSynoo=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [app1] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [appAdmin] WITH PASSWORD=N'kGCgt27YW97RIPe0Xxe/0V84aQcJgoTLCbeV29ChsRw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [appAdmin] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [distributor_admin] WITH PASSWORD=N'lpV0tW3BjDq3N3mCySPtbD1JKVOBTAH3hXO25cz4Gmo=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO

ALTER LOGIN [distributor_admin] DISABLE
GO

ALTER SERVER ROLE [sysadmin] ADD MEMBER [distributor_admin]
GO

/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [Jess] WITH PASSWORD=N'eIKU0OMNqnZpR+p3vnYMloVIaf0L7zLcZXIPCE7rpuk=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [Jess] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [PubsAdmin] WITH PASSWORD=N'4NNiP9aePrJFc9y6MFJk0PNPcmJQk4NgBDTtBIcdJew=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [PubsAdmin] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [storageuser] WITH PASSWORD=N'fx4Ug3giFQzO3AnuRAFCmEJTUpDbzBMGfgQp+OsgVMo=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [storageuser] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [testlogin] WITH PASSWORD=N'wHOTaTkUxxag3Bsz97aX6pouidE+WUT3tpjoE5IuoU8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Dansk], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [testlogin] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [TestOrphan1] WITH PASSWORD=N'47FbRjEPfIe8ZsB13vz3SP7aEDehm6Tx9+vQzg1oRHg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [TestOrphan1] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [TestOrphan2] WITH PASSWORD=N'XL2KzM7m3enboAiRyY6dIYPiEaaxuCaJ8UXSwv2qxbk=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [TestOrphan2] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [testuser2] WITH PASSWORD=N'0qdcmqbxwatv9XwyayJeILRJ7ecelA3w+v6Aqc4WYh0=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [testuser2] DISABLE
GO

DENY CONNECT SQL TO [testuser2]
GO

ALTER SERVER ROLE [setupadmin] ADD MEMBER [testuser2]
GO

/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [webuser] WITH PASSWORD=N'X0zZZyKxQlhJPffWjVPyJlxNgOiYLQ+M4zvLHp/kW54=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [webuser] DISABLE
GO

ALTER SERVER ROLE [processadmin] ADD MEMBER [webuser]
GO

ALTER SERVER ROLE [dbcreator] ADD MEMBER [webuser]
GO


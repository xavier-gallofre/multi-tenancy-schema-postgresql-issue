# MultiTenancy: Postgresql + Schema mode issue

### Versions and Configs
* Grails: 3.3.8
* Gorm: 6.1.10.RELEASE
* runtime 'org.postgresql:postgresql:42.2.4'

### Preamble
Issue implementing Multi Tenancy with schema mode an PostgreSQL DB. The project is working with h2 DB but is not working with postgreSQL DB.
The problem is related with how gorm is switching the schema with MultiTenancy

### Problem

The web app is configured with Multi Tenancy in `SCHEMA` mode, a `PostgreSQL` database and a `SubDomain Tenant Resolver`.
Retrieving the log from postgresql I've found an SQL Command with an error. It's trying to execute `SET SCHEMA schema1` instead of
`SET SCHEMA 'schema1'` as it's defined in postgresql docs https://www.postgresql.org/docs/9.6/static/sql-set.html.
Another way to resolve it could it be executing `SET search_path TO schema1` instead of SET SCHEMA.

I think that it's necessary to change the command that it's executing to change the schema.


### Files Related

There is a `docs/` directory with a picture of the error thrown, a csv file with the log of PostgreSQL DB and a script to create the DB and schemas.
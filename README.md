# Industria Petrolera
Proyecto para la materia de Seguridad Informática (tc) Ago-Dic 2015

### Configs
#### Database
**Database:** `oilsec`
**Username:** `oiluser`
**Password:** `oiluser`


### Setup
1. Clone repo:
		git clone asdas
1. Load `schema.sql`, e.g.:
		mysql -u root < db/schema.sql
1. Edit tomcat `server.xml` file with the following changes:
```xml
...
      <!--
      <Realm className="org.apache.catalina.realm.UserDatabaseRealm"
             resourceName="UserDatabase"/>
      -->
...
      <Realm  className="org.apache.catalina.realm.JDBCRealm"
             driverName="com.mysql.jdbc.Driver"
          connectionURL="jdbc:mysql://localhost:3306/oilsec"
         connectionName="realm_access" connectionPassword="realmpass"
              userTable="tomcat_users" userNameCol="user_name" userCredCol="password"
          userRoleTable="tomcat_users_roles" roleNameCol="role_name" />
...

```
1. Open Netbeans Project


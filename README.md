# simple4h
study Spring Cloud

1, 需要导入数据库

nacos-all/distribution/conf/nacos-mysql.sql

2, 修改nacos数据库密

nacos-all/console/src/main/resources/application.properties

3，启动nacos(添加启动参数-Dnacos.standalone=true--单例)

nacos-all/console/src/main/java/com/alibaba/nacos/Nacos.java

4，启动sentinel

5，启动相关服务
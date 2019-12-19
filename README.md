# simple4h
study Spring Cloud

1, 需要导入数据库

nacos-all/distribution/conf/nacos-mysql.sql

2, 修改nacos数据库密

nacos-all/console/src/main/resources/application.properties

3，启动nacos(添加启动参数-Dnacos.standalone=true--单例)

nacos-all/console/src/main/java/com/alibaba/nacos/Nacos.java

​	3.1, 在nacos添加配置文件

	[
        {
            "resource": "/user/get_info",
            "limitApp": "default",
            "grade": 1,
            "count": 1,
            "strategy": 0,
            "controlBehavior": 0,
            "clusterMode": false
        }
    ]
​	3.2,添加gateway配置

	{
	"filters": [],
	"id": "user_route",
	"order": 0,
	"predicates": [{
	    "args": {
	        "pattern": "/user"
	    },
	    "name": "Path"
	}],
	"uri": "http://www.baidu.com"
	}
4，启动sentinel

5，启动相关服务
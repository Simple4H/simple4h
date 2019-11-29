FROM simple4h/java8:v1.1
MAINTAINER crescentcxm@gmail.com
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo 'Asia/Shanghai' >/etc/timezone
ADD target/simple4h-product-0.0.1.jar /root/developer/simple4h-product-0.0.1.jar
EXPOSE 9000:9000
ENTRYPOINT ["java","-jar","/root/developer/simple4h-product-0.0.1.jar"]
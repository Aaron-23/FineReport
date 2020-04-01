FROM tomcat:8.5.51

# 时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /usr/local/tomcat
#ADD ./webroot ./webapps/webroot
ADD memory.sh ./memory.sh
RUN wget https://goodrain-delivery.oss-cn-hangzhou.aliyuncs.com/zhangz/tomcat-linux.tar.gz \
&& tar xvf tomcat-linux.tar.gz \
&& mv tomcat-linux/webapps/* ./webapps \
&& cp /usr/local/tomcat/tomcat-linux/lib/tools.jar  /usr/local/tomcat/webapps/webroot/WEB-INF/lib/  \
$$ sed -i "2a . /memset.sh" /usr/local/tomcat/bin/catalina.sh \
&& chmod +x  /memset.sh \
#&& rm -rf webapps/webroot/WEB-INF/embed/finedb/*

EXPOSE 8080

CMD ["catalina.sh","run"]

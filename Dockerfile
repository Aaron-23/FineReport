FROM tomcat:8.5.51

# 时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /usr/local/tomcat

RUN wget https://fine-build.oss-cn-shanghai.aliyuncs.com/finereport/10.0/tomcat/tomcat-linux.tar.gz \
&& tar xvf tomcat-linux.tar.gz \
&& mv tomcat-linux/webapps/* ./webapps \
&& cp /usr/local/tomcat/tomcat-linux/lib/tools.jar  /usr/local/tomcat/webapps/webroot/WEB-INF/lib/

EXPOSE 8080
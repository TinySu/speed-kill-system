# 实战高并发秒杀系统


最近正在通过黄文毅老师的《一步一步学Spring Boot：微服务项目实战（第2版）》学习Spring Boot，该书由浅入深的介绍了Spring Boot的使用以及原理，对于我这样的零基础初学者来说体验十分友好。

第21章以秒杀系统为例，介绍Spring Boot在项目开发中的应用。以下是我学习该秒杀系统的成果。

# 1、效果

![](https://tinysu.gitee.io/giteephotobed/Spring%20Boot/speed-kill-system/pic_06.JPG)

1、进入秒杀页面后，点击秒杀按钮，出现秒杀成功提示：

![](https://tinysu.gitee.io/giteephotobed/Spring%20Boot/speed-kill-system/pic_07.JPG)

2、然后回到秒杀页面，可以看到，对应库存量减少了：

![](https://tinysu.gitee.io/giteephotobed/Spring%20Boot/speed-kill-system/pic_08.JPG)

# 2、实现

首先附上我的项目[github地址](https://github.com/TinySu/speed-kill-system)，关于github的使用在此不进行赘述。

### 前提准备

- IntelliJ IDEA 2020.1
- apache-maven-3.6.3
- MySQL 5.7
- Redis-x64-3.0.504
- apache-activemq-5.15.0

其实从头跟着《一步一步学Spring Boot：微服务项目实战（第2版）》的内容走，基本就能把各种安装的软件装好，各种软件的安装可见书本第1、2、7、11章。详见参考目录。

### 开始使用

1、将项目clone下来后，首先找到doc文件夹中的speed-kill-anime.sql文件，运行MySQL，在test库中，运行speed-kill-anime.sql完成建表、插入记录。 

2、然后打开IntelliJ IDEA，选择从本地工程导入。

![](https://tinysu.gitee.io/giteephotobed/Spring%20Boot/speed-kill-system/pic_01.jpg)

3、打开工程后，下载pom.xml文件中的依赖，IDEA会自动导入，如果无法导入或者导入失败请手动导入，所有的依赖一定要成功，否则无法正常运行。然后根据自己电脑上的MySQL情况设置application.properties里面的用户、密码。

![](https://tinysu.gitee.io/giteephotobed/Spring%20Boot/speed-kill-system/pic_02.jpg)

4、开启MySQL服务、redis服务、以及消息队列。

![](https://tinysu.gitee.io/giteephotobed/Spring%20Boot/speed-kill-system/pic_03.JPG)

5、如图所示，找到程序的运行入口，点击运行。

![](https://tinysu.gitee.io/giteephotobed/Spring%20Boot/speed-kill-system/pic_04.JPG)

6、如图所示，程序正常加载

![](https://tinysu.gitee.io/giteephotobed/Spring%20Boot/speed-kill-system/pic_05.JPG)

7、打开浏览器，在地址栏键入http://localhost:8080/products/all，出现下图秒杀界面。其中8080是自己程序运行的端口号，我的是1117，可以在application.properties中修改。

![](https://tinysu.gitee.io/giteephotobed/Spring%20Boot/speed-kill-system/pic_06.JPG)

# 3、核心技术简介

### 缓存

把部分业务逻辑迁移到内存的缓存或者Redis中，从而极大地提高并发读效率。

### 削峰

秒杀开始的一瞬间，会有大量用户冲进来，所以在开始时会有一个瞬间流量峰值。如何使瞬间的流量峰值变得更平缓，是成功设计秒杀系统的关键。要实现流量的削峰填谷，一般的方法是采用缓存和MQ中间件。

### 异步

将同步业务设计成异步处理的任务，以提高网站的整体可用性。

### 限流

由于活动库存量一般都很少，只有少部分用户才能秒杀成功，所以需要限制大部分用户流量，只准少量用户流量进入后端服务器。

# 参考

1. [《一步一步学Spring Boot：微服务项目实战（第2版）》](https://weread.qq.com/)
2. [IDEA 2020.1 安装教程](https://www.cnblogs.com/rainszj/p/12720624.html)
3. [maven 配置指南](https://maven.aliyun.com/mvn/guide)
4. [MySQL安装](https://blog.csdn.net/qq_44890458/article/details/105441601)

# 0x09 Web Infrastructure Design 
## Description

In this project, I explore a few web infrastructure designs of varying usefulness/power.

Task/File | Description 
-----|-----
0-simple_web_stack | One server web infrastructure - hosts www.foobar.com/8.8.8.8. It consists of one server with a LAMP stack (web server, app server, database, OS/kernel). There are a few issues with this infrastructure: Single Point of Failure (whole system will fail if the server breaks down or is being maintained), not scalable. 
1-distributed_web_infrastructure | This infrastructure has 3 servers, each holding two servers of the same type (server clusters). Issues: SPOF per server. If the server holding a server cluster fails, the server cluster will fail as well. Better to have a few servers each having a server stack for even more redundancy. No monitoring or security as well. 
2-secured_and_monitored_web_infrastructure | 

## Author
-Salmen Zouari

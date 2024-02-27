@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\xampp\localdisk\hypersonic\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\xampp\localdisk\ingres\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\ingres\scripts\ctl.bat START)
if exist C:\xampp\localdisk\mysql\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\mysql\scripts\ctl.bat START)
if exist C:\xampp\localdisk\postgresql\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\postgresql\scripts\ctl.bat START)
if exist C:\xampp\localdisk\apache\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\apache\scripts\ctl.bat START)
if exist C:\xampp\localdisk\openoffice\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\openoffice\scripts\ctl.bat START)
if exist C:\xampp\localdisk\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\apache-tomcat\scripts\ctl.bat START)
if exist C:\xampp\localdisk\resin\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\resin\scripts\ctl.bat START)
if exist C:\xampp\localdisk\jboss\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\jboss\scripts\ctl.bat START)
if exist C:\xampp\localdisk\jetty\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\jetty\scripts\ctl.bat START)
if exist C:\xampp\localdisk\subversion\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\xampp\localdisk\lucene\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\lucene\scripts\ctl.bat START)
if exist C:\xampp\localdisk\third_application\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\xampp\localdisk\third_application\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\third_application\scripts\ctl.bat STOP)
if exist C:\xampp\localdisk\lucene\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\xampp\localdisk\subversion\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\subversion\scripts\ctl.bat STOP)
if exist C:\xampp\localdisk\jetty\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\jetty\scripts\ctl.bat STOP)
if exist C:\xampp\localdisk\hypersonic\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\xampp\localdisk\jboss\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\jboss\scripts\ctl.bat STOP)
if exist C:\xampp\localdisk\resin\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\resin\scripts\ctl.bat STOP)
if exist C:\xampp\localdisk\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\xampp\localdisk\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\xampp\localdisk\openoffice\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\openoffice\scripts\ctl.bat STOP)
if exist C:\xampp\localdisk\apache\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\apache\scripts\ctl.bat STOP)
if exist C:\xampp\localdisk\ingres\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\ingres\scripts\ctl.bat STOP)
if exist C:\xampp\localdisk\mysql\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\mysql\scripts\ctl.bat STOP)
if exist C:\xampp\localdisk\postgresql\scripts\ctl.bat (start /MIN /B C:\xampp\localdisk\postgresql\scripts\ctl.bat STOP)

:end


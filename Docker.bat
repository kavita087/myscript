echo off
set arg1=%1
set arg2=%2

echo %arg1%
echo %arg2%

docker exec -i %arg1% cmd /c "sc create %arg1% binpath="C:\Deployment\%arg1%\%arg2%" DisplayName="%arg1%" start= auto"
docker exec -i %arg1% cmd /c "sc start %arg1%"
docker exec -i %arg1% cmd /c "sc query %arg1%"
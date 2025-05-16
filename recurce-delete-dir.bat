@echo  off

REM            BATCH  FILE

chcp  65001

cls

color  70

ECHO  УКАЖИТЕ  ДИСК:  ПРИМЕР:  C

set  /p  "ddссk1="
set  "ddссk2=%ddссk1%:"
%ddссk2%

cd  "%ddссk2%\"
:loop
dir
echo  Введите  путь  к  директории  в  которой  находятся  файлы:  ПРИМЕР:  Users  

set  /p  "path1="
echo  %path1%
set  "path2=%path1%"
echo  %path2%
cd  %path2%
dir
echo  Если  в  нужном  каталоге,  то  введите  1,  а  если  нет,  то  3  и  больше.

set  /p  "var1="  &&  cls

SET  var2=2  &&  cls

IF  %var1%  GTR  %var2%  (
        goto  loop

)


REM            BATCH  FILE
color  70
echo  Десcиденты!  Приготовиться  к  рекурсивному  удалению  каталогов  от  текущего  каталога  и  выше!

pause
cls
echo  Введите  название  каталога в котором нужно поработать:  Например  Кошка

set  /p  "name3="
set  "name3=%name4%"
echo  %name4%


FOR  /r  %%G  in  ("%name4%")  Do  (@echo  %%G
RD  "%%G" /s /q  )

pause
cls
exit

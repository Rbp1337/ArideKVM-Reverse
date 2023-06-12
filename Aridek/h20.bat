@echo off
title H20
   H2OSDE-Wx64.exe -SU %random% | find /i "readonly"
   )
)

H2OSDE-Wx64 -SU auto --algo1
FOR %%x in (SM,SP,SV,SS,SKU,SF,BM,BP,BV,BS,BA,CM,CV,CS,CA,CSKU) do (
   call set "H2O=%%H2O%% -%%x !rnd!%random%!rnd1!%%x"
)
H2OSDE-Wx64 %H2O%




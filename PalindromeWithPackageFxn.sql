CREATE or replace PACKAGE palindromepck AS
    PROCEDURE pald(A IN NUMBER ,C OUT Number );
END palindromepck;

CREATE OR REPLACE PACKAGE BODY palindromepck AS 
    PROCEDURE pald(A IN NUMBER ,C OUT Number ) IS 
    n number;
    m number;
    temp number:=0;
    rem number;
    BEGIN
    n:=A;
    m:=n;
    while n>0
    loop
        rem:=mod(n,10);
        temp:=(temp*10)+rem;
        n:=trunc(n/10);
    end loop;
     if m = temp
    then
        dbms_output.put_line(m);
        dbms_output.put_line('It is a palindrome number !');
    else
        dbms_output.put_line(m);
        dbms_output.put_line('It is not a palindrome number !');
    end if;
    END pald;
END palindromepck;

DECLARE
C Number;
BEGIN
 palindromepck.pald(1231,C);
END;

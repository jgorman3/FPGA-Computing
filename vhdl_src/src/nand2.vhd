LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.resources.ALL;
ENTITY nand2 IS
    GENERIC (
        trise : delay := 10ns;
        tfall : delay := 8ns
    );
    PORT (
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        c : OUT STD_LOGIC
    );
END nand2;

ARCHITECTURE behav OF nand2 IS
BEGIN 
    my_second_process : PROCESS(a,b)
    BEGIN
        IF (a = '1' AND b = '1') THEN
            c <= '0' AFTER tfall;
        ELSIF (a = '0' OR b = '0') THEN
            c <= '1' AFTER trise;
        ELSE
            c <= 'X' AFTER (trise + tfall)/2;
        END IF;
    END PROCESS;
 END behav;

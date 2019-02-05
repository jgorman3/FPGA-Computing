LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.resources.ALL;
ENTITY xor2 IS
    GENERIC (
        trise : delay := 10ns;
        tfall : delay := 8ns
    );
    PORT (
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        c : OUT STD_LOGIC
    );
END xor2;

ARCHITECTURE behav OF xor2 IS
BEGIN
    my_second_process : PROCESS(a,b)
    BEGIN 
        IF (a = '1' AND b ='0') OR (a ='0' AND b = '1') THEN
            c <= '1' AFTER trise;
        ELSIF (a = '0' AND b = '0') OR (a ='1' AND b = '1') THEN
            c <= '0' AFTER tfall;
        ELSE
            c <= 'X' AFTER (trise + tfall)/2;
        END IF;
    END PROCESS;
 END behav;

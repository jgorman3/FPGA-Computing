LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE work.resources.ALL;
ENTITY or2 is
    GENERIC (
        trise : delay := 10 ns;
        tfall : delay := 8 ns
    );
    PORT (
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        c : OUT STD_LOGIC
    );
END or2;

ARCHITECTURE behav OF or2 IS
BEGIN
    my_second_process : PROCESS(a,b)
    BEGIN
        IF (a = '1' OR b = '1') THEN
            c <= '1' AFTER trise;
        ELSIF (a = '0' AND b ='0') THEN
            c <= '0' AFTER tfall;
        ELSE
            c <= 'X' AFTER (trise + tfall)/2;
        END IF;
     END PROCESS;
END behav;

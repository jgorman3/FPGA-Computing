LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.resources.ALL;
ENTITY nor2 IS
    GENERIC (
        trise : delay := 10ns;
        tfall : delay := 8 ns
    );
    PORT (
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        c : OUT STD_LOGIC
    );
END nor2;

ARCHITECTURE behav OF nor2 IS
BEGIN
    my_second_process : PROCESS(a,b)
    BEGIN
        IF (a = '0' AND b = '0') THEN
            c <= '1' AFTER trise;
        ELSIF (a = '1' OR b = '1') THEN
            c <= '0' AFTER tfall;
        ELSE
            c <= 'X' AFTER (trise + tfall)/2;
        END IF;
    END PROCESS;
END;

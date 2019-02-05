LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.resources.ALL;
ENTITY dff IS
    GENERIC (
        tdelay: delay := 2 ns
    );
    PORT (
        D :   IN STD_LOGIC;
        CLK : IN STD_LOGIC;
        EN :  IN STD_LOGIC;
        Q :   OUT STD_LOGIC;
        QN :  OUT STD_LOGIC
    );
END dff;

ARCHITECTURE behav OF dff IS
 
BEGIN
    my_second_process : PROCESS(D, CLK, EN)
    BEGIN
        IF (EN = '0') THEN
            Q <= 'X' AFTER tdelay;
            QN <= 'X' AFTER tdelay;
        ELSIF (D = '1' AND CLK = '1' AND CLK'LAST_VALUE = '0' AND EN = '1') THEN
            Q <= '1' AFTER tdelay;
            QN <= '0' AFTER tdelay;
        ELSIF (D = '0' AND CLK = '1' AND CLK'LAST_VALUE = '0' AND EN = '1') THEN
            Q <= '0' AFTER tdelay;
            QN <= '1' AFTER tdelay;
        END IF;
     END PROCESS;
END;

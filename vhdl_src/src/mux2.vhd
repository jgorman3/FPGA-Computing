LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.resources.ALL;
ENTITY mux2 IS
    GENERIC (
        trise : delay := 10 ns;
        tfall : delay := 8 ns
    );
    PORT(
        S0 : IN STD_LOGIC;
        D0 : IN STD_LOGIC;
        D1 : IN STD_LOGIC;
        Y : OUT STD_LOGIC
    );
 END mux2;
 
 ARCHITECTURE behav OF mux2 IS
 BEGIN
    my_second_process: PROCESS(S0,D0,D1)
    BEGIN
        IF (S0 = '0') AND (D1 = '0') THEN
                Y <= '0' AFTER tfall;
        ELSIF (S0 = '0') AND (D1 = '1') THEN 
                Y <= '1' AFTER trise;
        ELSIF (S0 = '1') AND (D0 = '1') THEN
                Y <= '1' AFTER trise;
        ELSIF (S0 = '1') AND (D0 = '0') THEN
                Y <= '0' AFTER tfall;
        ELSE
            Y <= 'X' AFTER (trise + tfall)/2;
        END IF;
     END PROCESS;
END;
        
        
        

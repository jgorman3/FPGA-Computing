LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.resources.ALL;
ENTITY mux4 IS
    GENERIC (
        trise : delay := 10 ns;
        tfall : delay := 8 ns
    );
    PORT (
        S0 : IN STD_LOGIC;
        S1 : IN STD_LOGIC;
        D0 : IN STD_LOGIC;
        D1 : IN STD_LOGIC;
        D2 : IN STD_LOGIC;
        D3 : IN STD_LOGIC;
        Y : OUT STD_LOGIC
     );
END mux4;

ARCHITECTURE behav OF mux4 IS
BEGIN
    my_second_process : PROCESS(S0,S1,D0,D1,D2,D3)
    BEGIN
        IF (S0 = '0' AND S1 = '0') AND (D0 = '0') THEN
            Y <= '0' after tfall;
        ELSIF (S0 = '0' AND S1 = '0') AND (D0 = '1') THEN
            Y <= '1' after trise;
        ELSIF (S0 = '1' AND S1 = '0') AND (D1 = '0') THEN
            Y <= '0' after tfall;
        ELSIF (S0 = '1' AND S1 = '0') AND (D1 = '1') THEN
            Y <= '1' after trise;        
        ELSIF (S0 = '0' AND S1 = '1') AND (D2 = '0') THEN
            Y <= '0' after tfall;
        ELSIF (S0 = '0' AND S1 = '1') AND (D2 = '1') THEN
            Y <= '1' after trise;
        ELSIF (S0 = '1' AND S1 = '1') AND (D3 = '0') THEN
            Y <= '0' after tfall;
        ELSIF (S0 = '1' AND S1 = '1') AND (D3 = '1') THEN
            Y <= '1' after trise;
        ELSE
            Y <= 'X' after (trise + tfall)/2;
        END IF;
    END PROCESS;
 END;

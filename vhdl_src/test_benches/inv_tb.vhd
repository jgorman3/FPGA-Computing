LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.resources.ALL;
ENTITY inv_tb IS
END ENTITY;
ARCHITECTURE behavioral OF inv_tb IS
    COMPONENT inv 
    PORT (
        a : IN STD_LOGIC;
        b : OUT STD_LOGIC
     );
     END COMPONENT;
        signal a_sig : STD_LOGIC;
        signal b_sig : STD_LOGIC;
BEGIN
    uut: inv PORT MAP(
        a => a_sig,
        b => b_sig
    );
    stim_process: PROCESS
    BEGIN
        a_sig <= '0';              
        wait for 40 ns;     
        a_sig <= '1';    
        wait for 40 ns; 
    END PROCESS;
 END;

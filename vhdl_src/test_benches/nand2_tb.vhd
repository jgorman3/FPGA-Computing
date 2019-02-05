LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.resources.ALL;
ENTITY nand2_tb is
END ENTITY;
ARCHITECTURE behavioral OF nand2_tb IS
    COMPONENT nand2
    PORT (
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        c : OUT STD_LOGIC
    );
    END COMPONENT;
        SIGNAL A_SIG : STD_LOGIC;
        SIGNAL B_SIG : STD_LOGIC;    
        SIGNAL C_SIG : STD_LOGIC;
    
BEGIN
    uut: nand2 PORT MAP(
        a => A_SIG,
        b => B_SIG,
        c => C_SIG
    );
    stim_process : PROCESS
    BEGIN
            A_SIG <= '0';       
            B_SIG <= '0';       
            wait for 40 ns;     
            A_SIG <= '1';    
            wait for 40 ns; 
            A_SIG <= '0';    
            B_SIG <= '1';    
            wait for 40 ns;    
            A_SIG <= '1';                  
            wait for 40 ns;
    END PROCESS;
END;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.resources.ALL;
ENTITY nor2_tb IS
END ENTITY;
ARCHITECTURE behavioral OF nor2_tb IS
    COMPONENT nor2 
    PORT (
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        c : OUT STD_LOGIC
     );
     END COMPONENT;
        signal a_sig : STD_LOGIC;
        signal b_sig : STD_LOGIC;
        signal c_sig : STD_LOGIC;
        
BEGIN
    uut: nor2 PORT MAP(
        a => a_sig,
        b => b_sig,
        c => c_sig
    );
    stim_process: PROCESS
    BEGIN
            a_sig <= '0';       
            b_sig <= '0';       
            wait for 40 ns;     
            a_sig <= '1';    
            wait for 40 ns; 
            a_sig <= '0';    
            b_sig <= '1';    
            wait for 40 ns;    
            a_sig <= '1';                  
            wait for 40 ns;
        END PROCESS;
    END;

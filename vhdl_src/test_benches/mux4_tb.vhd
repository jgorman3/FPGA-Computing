LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.resources.ALL;
ENTITY mux4_tb IS
END ENTITY;

ARCHITECTURE behavioral OF mux4_tb IS
COMPONENT mux4 
    PORT (
       S0 : IN STD_LOGIC;
       S1 : IN STD_LOGIC;
       D0 : IN STD_LOGIC;
       D1 : IN STD_LOGIC;
       D2 : IN STD_LOGIC;
       D3 : IN STD_LOGIC;
       Y : OUT STD_LOGIC
     );
     END COMPONENT;
        signal S0_sig : STD_LOGIC;
        signal S1_sig : STD_LOGIC;
        signal D0_sig : STD_LOGIC;
        signal D1_sig : STD_LOGIC;
        signal D2_sig : STD_LOGIC;
        signal D3_sig : STD_LOGIC;
        signal Y_sig : STD_LOGIC;
BEGIN
    uut: mux4 PORT MAP(
        S0 => S0_sig,
        S1 => S1_sig,
        D0 => D0_sig,
        D1 => D1_sig,
        D2 => D2_sig,
        D3 => D3_sig,
        Y => Y_sig
    );
    stim_process: PROCESS
    BEGIN
        S0_sig <= '0';
        S1_sig <= '0'; 
        D0_sig <= '1'; 
        D1_sig <= '0';
        D2_sig <= '0';
        D3_sig <= '0';         
        wait for 40 ns;     
        S0_sig <= '1';
        S1_sig <= '0';
        D0_sig <= '0';  
        D1_sig <= '1';
        D2_sig <= '0';
        D3_sig <= '0'; 
        wait for 40 ns; 
        S0_sig <= '0';
        S1_sig <= '1'; 
        D0_sig <= '0';
        D1_sig <= '0';
        D2_sig <= '0';
        D3_sig <= '1';              
        wait for 40 ns;     
        S0_sig <= '1'; 
        S1_sig <= '1';
        D0_sig <= '1';
        D1_sig <= '0';
        D2_sig <= '1';
        D3_sig <= '0';    
        wait for 40 ns; 
        S0_sig <= '0';
        S1_sig <= '0'; 
        D0_sig <= '0'; 
        D1_sig <= '0';
        D2_sig <= '0';
        D3_sig <= '1';         
        wait for 40 ns;
        S0_sig <= '1';
        S1_sig <= '0';
        D0_sig <= '1';  
        D1_sig <= '0';
        D2_sig <= '1';
        D3_sig <= '0'; 
        wait for 40 ns; 
        S0_sig <= '0';
        S1_sig <= '1'; 
        D0_sig <= '0';
        D1_sig <= '1';
        D2_sig <= '1';
        D3_sig <= '0';              
        wait for 40 ns;  
        S0_sig <= '1'; 
        S1_sig <= '1';
        D0_sig <= '1';
        D1_sig <= '0';
        D2_sig <= '1';
        D3_sig <= '1';    
        wait for 40 ns;     
    END PROCESS;
 END;

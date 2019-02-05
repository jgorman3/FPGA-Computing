LIBRARY ieee;
USE  ieee.std_logic_1164.ALL; 
USE  work.resources.ALL; 
ENTITY or2_tb IS 
END or2_tb; 
ARCHITECTURE behavioral OF or2_tb IS        
-- Component Declaration for the Unit Under Test (UUT)       
    COMPONENT or2     
    PORT(          
        a : IN  std_logic;          
        b : IN  std_logic;          
        c : OUT  std_logic         );     
    END COMPONENT;    
    --Inputs    
    signal a_sig : std_logic ;    
    signal b_sig : std_logic ;    
    --Outputs    
    signal c_sig : std_logic; 
BEGIN
    -- Instantiate the Unit Under Test (UUT)    
    uut: or2 PORT MAP (             
        a => a_sig,            
        b => b_sig,              
        c => c_sig 
    );      -- Stimulus process      
    stim_proc: process   
    begin         
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
     end process;
 END;

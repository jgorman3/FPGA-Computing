LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.resources.ALL;
ENTITY dff_tb IS
END ENTITY;

ARCHITECTURE behavioral OF dff_tb IS
COMPONENT dff 
    PORT (
    D :   IN STD_LOGIC;
    CLK : IN STD_LOGIC;
    EN :  IN STD_LOGIC;
    Q :   OUT STD_LOGIC;
    QN :  OUT STD_LOGIC
    );
END COMPONENT;
    constant clk_period : time := 10 ns;
    signal D_SIG : STD_LOGIC;
    signal clk_sig : STD_LOGIC;
    signal EN_SIG : STD_LOGIC;
    signal Q_SIG : STD_LOGIC;
    signal QN_SIG : STD_LOGIC;
    
BEGIN
    uut: dff PORT MAP(
        D => D_SIG,
        CLK => clk_sig,
        EN => EN_SIG,
        Q => Q_SIG,
        QN => QN_SIG
    );
    clock_process : process 
    begin           
    clk_sig <= '0';
    EN_SIG <= '1';  
    D_SIG <= '1';    
    wait for clk_period/2;        
    clk_sig <= '1'; 
    EN_SIG <= '1'; 
    D_SIG <= '0';       
    wait for clk_period/2; 
    
    clk_sig <= '0';
    EN_SIG <= '1';
    D_SIG <= '0';     
    wait for clk_period/2;        
    clk_sig <= '1';
    EN_SIG <= '1'; 
    D_SIG <= '1';        
    wait for clk_period/2;
        
    clk_sig <= '0'; 
    EN_SIG <= '1';  
    D_SIG <= '0';    
    wait for clk_period/2;        
    clk_sig <= '1'; 
    EN_SIG <= '1';  
    D_SIG <= '0';      
    wait for clk_period/2;
    
    clk_sig <= '0'; 
    EN_SIG <= '0';  
    D_SIG <= '0';    
    wait for clk_period/2;        
    clk_sig <= '1'; 
    EN_SIG <= '1';  
    D_SIG <= '1';      
    wait for clk_period/2;
    end process;
end;

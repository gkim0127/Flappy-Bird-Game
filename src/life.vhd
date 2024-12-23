library IEEE;
 use  IEEE.STD_LOGIC_1164.all;
 use  IEEE.STD_LOGIC_ARITH.all;
 use  IEEE.STD_LOGIC_UNSIGNED.all;
 
 entity life is 
	port( clk,reset,collide: in std_logic;
			bird_dead: out std_logic);
end entity life;
	
architecture behaviour of life is 
signal lives: std_logic_vector(1 downto 0);
	begin
		process (clk,collide)
		 begin
			if (rising_edge(clk)) then
				if (reset='0') then
					lives <= "11";
					bird_dead <= '0';
				else
					if (lives /= "00" ) then 
						lives <= lives -1;
					else 
						bird_dead <= '1';
					end if;
				end if;
			end if;
		end process;
end architecture behaviour; 
						
						
						
					
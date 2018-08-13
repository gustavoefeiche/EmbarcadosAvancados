library IEEE;
use IEEE.std_logic_1164.all;

entity topLevel is
    port (
        -- Gloabals
        fpga_clk_50  : in  std_logic;             -- clock.clk
		  sw_input 		: in  std_logic_vector(3 downto 0);
		  key_input 	: in  std_logic;
		  
        -- I/Os
        fpga_led_pio : out std_logic_vector(5 downto 0)

	);
end entity topLevel;

architecture bhv of topLevel is
 
 signal led_out_s : std_logic_vector(5 downto 0);




begin


	MUX_A : entity work.LED_peripheral
	generic map (
		counter_limit => 12
	)
	
	port map (
		clk => fpga_clk_50, 
		enable => key_input, 
		switches => sw_input, 
		led_out => led_out_s
	);
	
	fpga_led_pio <= led_out_s;


end architecture;
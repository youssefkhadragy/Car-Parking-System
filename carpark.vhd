library IEEE;
use IEEE.STD_LOGIC_1164.all; 

ENTITY carpark IS
PORT (px1,px2: IN STD_LOGIC;
	R1,R2,G1,G2: OUT STD_LOGIC;
	button: IN STD_LOGIC;
	motor: OUT STD_LOGIC);
END carpark;

ARCHITECTURE behavior of carpark IS
BEGIN
PROCESS(button)
BEGIN
R1 <= not(px1);
G1 <= px1;
R2 <= not(px2);
G2 <= px2;
motor <= not(button);
END PROCESS;
END behavior;
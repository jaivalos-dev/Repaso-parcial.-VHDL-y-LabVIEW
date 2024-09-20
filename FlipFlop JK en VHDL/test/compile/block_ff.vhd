-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : test
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\test\test\compile\block_ff.vhd
-- Generated   : Thu Sep 19 22:48:30 2024
-- From        : C:\My_Designs\test\test\src\block_ff.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity block_ff is 
end block_ff;

architecture block_ff of block_ff is

---- Component declarations -----

component jk_flipflop
  port(
       clk : in STD_LOGIC;
       J : in STD_LOGIC;
       K : in STD_LOGIC;
       Q : out STD_LOGIC;
       Qn : out STD_LOGIC
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : jk_flipflop
  port map(
       clk => Dangling_Input_Signal,
       J => Dangling_Input_Signal,
       K => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end block_ff;

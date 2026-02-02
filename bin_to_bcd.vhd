-- MIT License

-- Copyright (c) 2026 Jacob Smithmyer

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity bin_to_bcd is
Port ( bin          : in   STD_LOGIC_VECTOR(3 downto 0);
	     bcd          : out  STD_LOGIC_VECTOR (7 downto 0));
	   
end bin_to_bcd;

architecture Behavioral of bin_to_bcd is

begin

    conv : process(bin)
    begin
	
	   bcd(3 downto 0) <= std_logic_vector(to_unsigned(TO_INTEGER(unsigned(bin(3 downto 0))) mod 10, 4));
	   
	   if bin(3 downto 0) > "1001" then
	       bcd(7 downto 4) <= "0001";
	    else 
	       bcd(7 downto 4) <= "0000"; 
        end if;
        
	   end process;
	
end Behavioral;

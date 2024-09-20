library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jk_flipflop is
    Port (
        clk : in STD_LOGIC;
        J   : in STD_LOGIC;
        K   : in STD_LOGIC;
        Q   : out STD_LOGIC;
        Qn  : out STD_LOGIC
    );
end jk_flipflop;

architecture estructural of jk_flipflop is
    -- Señales internas para las salidas de las compuertas NAND
    signal c1, c2 : STD_LOGIC;
    signal Q_int, Qn_int : STD_LOGIC := '0'; -- Inicialización de las señales internas Q y Qn
begin

    -- NAND de 3 entradas: Qn, J, clk
    c1 <= not (Qn_int and J and clk);

    -- NAND de 3 entradas: Q, K, clk
    c2 <= not (Q_int and K and clk);

    -- NAND de 2 entradas: c1, Qn
    Q_int <= not (c1 and Qn_int);

    -- NAND de 2 entradas: c2, Q
    Qn_int <= not (c2 and Q_int);

    -- Asignar las señales internas a las salidas del puerto
    Q <= Q_int;
    Qn <= Qn_int;

end estructural;

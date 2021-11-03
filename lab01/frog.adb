with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure frog is
    A       : array (2 .. 3) of Integer;
    P       : Integer;
    N       : Integer;
    GREATER : Boolean := False;

begin

    for I of A loop
        Get (I);
    end loop;

    P := A (2); -- alt pulo
    N := A (3); -- num cano

    declare
        B : array (1 .. N) of Integer;
    begin
        for J of B loop
            Get (J);
        end loop;

        for X in 1 .. (N - 1) loop
            if (abs (B (X) - B (X + 1))) > P then
                GREATER := True;
            end if;
        end loop;

        if GREATER = True then
            Put_Line ("VOCE PERDEU");
        elsif GREATER = False then
            Put_Line ("VOCE GANHOU");
        end if;

    end;

end frog;
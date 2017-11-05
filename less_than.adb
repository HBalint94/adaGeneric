function less_than(G: Grid;Max: Positive) return Boolean is

C : Natural := 0;
begin
  for I in G'Range(1) loop
      for J in G'Range(2) loop
         if G(I,J) > 0 then
            C := C + G(I,J);
            if( C > Max) then
               return True;
            end if;
         end if;
      end loop;
   end loop;
   return False;


end less_than;

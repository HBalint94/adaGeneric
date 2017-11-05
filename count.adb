function count(G: in Grid) return Natural is
C : Natural := 0;
begin
  for I in G'Range(1) loop
      for J in G'Range(2) loop
         if G(I,J) > 0 then
            C := C + G(I,J);
            end if;
      end loop;
   end loop;
   return C;
end count;

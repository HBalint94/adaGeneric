with Ada.Text_IO;
use Ada.Text_IO;
package body Bag is

   function Size (T : Bag_Type) return Natural is
   begin
      return T.Size;
   end Size;
   procedure Add (T :in out Bag_Type;Value : ValueType) is
   Temp : Item;
   begin
      for i in T.Bag_Array'Range loop
         if T.Bag_Array(i).value = Value then
            T.Bag_Array(i).multiplicity := T.Bag_Array(i).multiplicity + 1;
            return;
         end if;
      end loop;
      if T.Size = T.Capacity then
         raise Full_Bag;
      else
         Temp.value := Value;
         Temp.multiplicity := 1;
         T.Bag_Array(T.Size+1) := Temp;
         T.Size := T.Size+1;
      end if;
   end Add;
   procedure Remove (T :in out Bag_Type; Value : ValueType) is
   Temp : Item;
   begin
      if T.Size = 0 then
         raise Empty_Bag;
      end if;
      for i in T.Bag_Array'Range loop
         if T.Bag_Array(i).value = Value and T.Bag_Array(i).multiplicity > 1 then
            T.Bag_Array(i).multiplicity := T.Bag_Array(i).multiplicity - 1;
            return;
         end if;
         if T.Bag_Array(i).value = Value and T.Bag_Array(i).multiplicity = 1 then
            T.Bag_Array(i) := Temp;
            T.Bag_Array(i).multiplicity := 0;
            T.Size := T.Size - 1;
            for J in I..Integer'Pred(T.Bag_Array'Last) loop
               T.Bag_Array(J) := T.Bag_Array(J+1);
               T.Bag_Array(J+1).multiplicity := 0;
            end loop;
            return;
         end if;
      end loop;

   end Remove;
   procedure WriteTheArray (T: Bag_Type) is
   begin
      for i in T.Bag_Array'Range loop
      --   Put_Line(Integer'Image(T.Bag_Array(i).value));
         Put_Line(Natural'Image(T.Bag_Array(i).multiplicity));
         Put_Line(" ----------------------------");
      end loop;
   end WriteTheArray;


end Bag;

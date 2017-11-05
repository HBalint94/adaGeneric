generic

   type ValueType is private;

package Bag is

        type Item is record
              value : ValueType;
              multiplicity : Natural;
        end record;
        type Bag_Type (Capacity : Positive) is private;

        function Size (T : Bag_Type) return Natural;
	procedure Add (T :in  out Bag_Type; Value : ValueType);
	procedure Remove (T :in out Bag_Type; Value : ValueType);
        -- procedure Multiplicity (T : in out Bag_Type; E : ValueType);
        procedure WriteTheArray (T : Bag_Type);
        Empty_Bag, Full_Bag: exception;

private
   type Tomb is array (Positive range<>) of Item;
   type Bag_Type (Capacity : Positive) is record
      Bag_Array : Tomb (1..Capacity);
      Size : Natural := 0;
   end record;
end Bag;

with Ada.Text_IO,count,less_than,count_value;
use Ada.Text_IO;


procedure countdemo is
   type G is array(Positive range<>,Positive range<>) of Natural;
   function Pred(E : Natural) return Boolean is
   begin
      if E > 3 then return True;
      else return False;
         end if;
   end Pred;


  function TestCount is new count(Positive,G);
   function TestLessThan is new less_than(Positive,G);
   function TestCountValue is new count_value(Natural,Positive,G,Pred);

   T :G(1..10,1..10):=  ( 1 => ( 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1, 7 => 1, 8 => 1, 9 => 1, 10 => 1 ),
                              2 => ( 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1, 7 => 1, 8 => 1, 9 => 1, 10 => 1 ),
                              3 => ( 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1, 7 => 1, 8 => 1, 9 => 1, 10 => 1 ),
                              4 => ( 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1, 7 => 1, 8 => 1, 9 => 1, 10 => 1 ),
                              5 => ( 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1, 7 => 1, 8 => 1, 9 => 1, 10 => 1 ),
                              6 => ( 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1, 7 => 1, 8 => 1, 9 => 1, 10 => 1 ),
                              7 => ( 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1, 7 => 1, 8 => 1, 9 => 1, 10 => 1 ),
                              8 => ( 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1, 7 => 1, 8 => 1, 9 => 1, 10 => 1 ),
                              9 => ( 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1, 7 => 1, 8 => 1, 9 => 1, 10 => 1 ),
                              10 => ( 1 => 1, 2 => 1, 3 => 10, 4 => 3, 5 => 1, 6 => 1, 7 => 1, 8 => 1, 9 => 1, 10 => 1 ));
   darab : Natural := TestCount(T);
   logikai : Boolean := TestLessThan(T,104);
   darab2 : Natural := TestCountValue(T);


begin


   Put_Line(Natural'Image(darab));
   if logikai then
      Put_Line("igen tobb madar kelt ki mint a kapott max ertek");
   else
      Put_Line("kevesebb madar kelt mint a kapott max ertek");
   end if;

   Put_Line(Natural'Image(darab2));

end countdemo;

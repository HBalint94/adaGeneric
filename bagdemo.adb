with Ada.Text_IO, bag;
use Ada.Text_IO;

procedure bagdemo is


        package TestBag is new Bag(Integer);
        MyBag : TestBag.Bag_Type(3);




begin
   TestBag.Add(MyBag,5);
   TestBag.Add(MyBag,10);
   TestBag.Add(MyBag,15);
   TestBag.Remove(MyBag,10);
   TestBag.Add(MyBag,22);
   TestBag.Remove(MyBag,15);

   TestBag.Add(MyBag,5);





   Put_Line(Natural'Image(TestBag.Size(MyBag)));
   Put_Line("elso teszt megvolt");
   TestBag.WriteTheArray(MyBag);

end bagdemo;

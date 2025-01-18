```ada
procedure Example is
   subtype My_Sub is Integer range 1..10;
   X : My_Sub := 1;
begin
   begin
      X := X + 5; 
   exception
      when Constraint_Error =>
         Put_Line("Constraint_Error: X is outside the allowed range");
         X := 10; -- Or handle the error appropriately
   end;
   if X > 10 then
      Put_Line("X is greater than 10");
   end if;
end Example;
```
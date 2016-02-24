(*
  Write a succint function to compute x^1000.
*)

(* Naive implementation. *)
fun x1000(x:real) =
  let
    val x5 = x*x*x*x*x;
    val x10 = x5*x5;
    val x20 = x10*x10;
    val x40 = x20*x20;
    val x80 = x40*x40;
    val x160 = x80*x80;
    val x320 = x160*x160;
    val x640 = x320*x320;
  in
    x640*x320*x40
  end;

(* Recursive implementation. *)
fun x_n(x:real,0) = 1.0
|   x_n(x:real, n:int) = x * x_n(x,n-1);

x1000(10.0);
x_n(10.0, 1000);

x1000(1.01);
x_n(1.01,1000);

(* Output:

Standard ML of New Jersey v110.79 [built: Wed Feb 24 13:14:49 2016]
- val x1000 = fn : real -> real
val x_n = fn : real * int -> real
val it = inf : real
val it = inf : real
val it = 20959.1556378 : real
val it = 20959.1556378 : real

*)

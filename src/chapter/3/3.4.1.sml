(*
  Write a succint function to compute x^1000.
*)

(* Gives wrong answer. *)
fun x1000(x:real) =
  let
    val x5 = x*x*x*x*x;
    val x10 = x5*x5;
  in
    x10*x10*x10
  end;

(* Gives correct answer. *)
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
val it = 1E30 : real
val it = inf : real
val it = 1.34784891533 : real
val it = 20959.1556378 : real

*)

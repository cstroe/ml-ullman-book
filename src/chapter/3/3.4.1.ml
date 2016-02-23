(*
  Write a succint function to compute x^1000.
*)

(* Gives wrong answer. *)
fun x1000(x:real) =
  let
    val x2 = x*x;
    val x5 = x*x*x*x*x;
    val x10 = x2*x5;
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

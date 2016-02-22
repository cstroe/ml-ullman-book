(* *a) Convert 123.45 to the next lower integer. *)

floor(123.45);

(* b) Convert -123.45 to the next lower integer. *)

floor(~123.45);

(* c) Convert 123.45 to the next higher integer. *)

ceil(123.45);

(* *d) Convert -123.45 to the next higher integer. *)

ceil(~123.45);

(* *e) Convert #"Y" to an integer. *)

ord(#"Y");

(* f) Convert 120 to a character. *)

chr(120);

(* *!g) Convert #"N" to a real. *)

real(ord(#"N"));

(* !h) Convert 97.0 to a character. *)

chr(floor(97.0));

(* i) Convert #"Z" to a string. *)

str(#"Z");

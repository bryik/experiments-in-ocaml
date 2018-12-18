
let mutableValue : int ref = ref 42

let _ =
  (* Read contents *)
  print_int !mutableValue;
  print_newline();
  (* >>> 42 *)

  (* Change the value *)
  mutableValue := 5;
  print_int !mutableValue;
  print_newline();
  (* >>> 5 *)

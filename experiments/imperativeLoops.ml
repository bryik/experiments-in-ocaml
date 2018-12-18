
(* prints n...0 *)
let countDown (n : int) =
  for i = n downto 0 do
    print_int i;
    print_newline()
  done


(* prints 0...n *)
let countUp (n: int) =
  for i = 0 to n do
    print_int i; print_newline()
  done

(* Returns the sum of 0...n *)
let sum (n : int) =
  let s = ref 0 in
  let current = ref n in
  while !current > 0 do
    s := !s + !current;
    current := !current - 1
  done;
  !s


let _ =
  countDown 10;
  print_newline();
  countUp 10;
  print_newline();
  print_int (sum 10);
  print_newline();

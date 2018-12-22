
(* A calculation that will take a long time can be delayed until it is needed. Taken from
  CSI 3120 taught by Amy Felty at uOttawa during the Fall 2018 semester.
*)

(* A delayed calculation type. Can be either evaluated ('EV') or unevaluated ('UN'). *)
type 'a delay =
  | EV of 'a
  | UN of (unit -> 'a)

(* A helper function that unwraps a delay type.
  If the delay has been evaluated, simply return the value. Otherwise, evaluate the UN
  function and return the result.
*)
let ev (d : 'a delay) : 'a =
  match d with
    | EV x -> x
    | UN f -> f()


(* A helper function that converts a delay ref from EV to UN. *)
let force (d:'a delay ref) : 'a =
  let v = ev !d in
  (d := EV v; v)


(* An extremely inefficient Fibonnaci calculator. *)
let rec fib n =
  match n with
    | 0 -> 0
    | 1 -> 1
    | 2 -> 1
    | _ -> fib (n - 1) + fib (n - 2)


let _ =
  let lotsOfOps = ref (UN (fun () -> fib 32)) in
  (* lotsOfOps could be passed around without evaluating fib(32). When fib(32) is needed, use force! *)
  print_int (force lotsOfOps);
  (* >>> 2178309 *)
  print_newline()

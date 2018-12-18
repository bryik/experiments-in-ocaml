
(* A function that makes counters. *)
let counter () =
  let count = ref 0 in
  (* Return a lambda closed over "count". *)
  fun () ->
    let currentCount = !count in
    (count := currentCount + 1; currentCount)


(* A shorthand for printing a integer followed by a newline. *)
let print (i : int) =
  print_int i; print_newline()


let _ =
  let counterA = counter() in
  print (counterA());  (* 0 *)
  print (counterA());  (* 1 *)
  print (counterA());  (* 2 *)

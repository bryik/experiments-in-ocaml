

(* The Optional type is a nice alternative to undefined. It allows you to represent a value as either available or unavailable. *)


(* Initialize random number generator. *)
Random.self_init ();;

(* A mock API request. The requested value may or may not exist. *)
let fetchName : string option =
  if Random.bool ()
  then Some "Frank"
  else None


let _ =
  let name = fetchName in
  (* Optionals ensure both cases, None and Some, are dealt with *)
  match name with
    | Some name -> print_string name; print_newline()
    | None -> print_string "name not found\n"




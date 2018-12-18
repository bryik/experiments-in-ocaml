
(* Resource: https://v1.realworldocaml.org/v1/en/html/lists-and-patterns.html *)


(* Creating a list using the :: operator. *)
let numbers = 1::2::[]

(* A more natural way to create a list (syntactic sugar for ::) *)
let moreNumbers = [3; 4; 5]

(* Careful... *)
(* [2]::[3] <- type error!
[2]::[3]::[] <- good! *)


(* Using patterns to extract data *)
let first lis =
  match lis with
    | [] -> None
    | hd::tl -> Some hd


(* Remove the first occurrence of "to_drop" from an int list *)
let rec drop_value (l : int list) (to_drop : int) =
  match l with
    | [] -> []
    | hd::tl ->
      if hd = to_drop then
        tl
      else
        [hd] @ (drop_value tl to_drop)


(* A shorthand for printing a integer followed by a newline. *)
let print (i : int) =
  print_int i; print_newline()


let _ = let altered = drop_value moreNumbers 4 in
  List.iter print altered
  (* >>> 3
     >>> 5
  *)

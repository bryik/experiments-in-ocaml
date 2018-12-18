
(* How can I represent a graph in ocaml? *)

(* Types and records *)
type edge = string * string
type vertex = { name: string; edges: edge list }
type graph = { vertices: vertex list }

(* Define a graph *)
let e1 : edge = ("A", "B")
let v1 : vertex = { name = "A"; edges = [e1] }
let v2 : vertex = { name = "B"; edges = [e1] }
let g : graph = { vertices = [v1; v2] }

(* A graph operation, returns a particular vertex by name. *)
let rec getVertex (vName : string) (g : graph) : vertex option =
  let { vertices } = g in
  match vertices with
    | [] -> None
    | hd::tl -> (
      let { name; edges } = hd in
      if name = vName then
        Some hd
      else
        getVertex vName {vertices = tl}
    )

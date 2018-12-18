
(* A "parameterized" type. 'value can be anything *)
type 'value node = 'value

(* Can use it to make other types *)
type sNode = (string) node

let a : sNode = "hello"
let b : string node = "world"


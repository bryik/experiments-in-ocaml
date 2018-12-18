
let rec zip (l1 : int list) (l2 : int list) : (int * int) list option =
  match (l1, l2) with
    | ([], []) -> Some []
    | (x::tl1, y::tl2) -> (
      match zip tl1 tl2 with
        | None -> None
        | Some zips -> Some ((x, y)::zips)
    )
    | (_, _) -> None


let _ =
  let l1 = [1; 2] in
  let l2 = [3; 4] in
  let result = Some ([(1, 3); (2, 4)]) in
  assert ((zip l1 l2) = result)
let rec gcd n m = match (max n m) mod (min n m) with
    | 0 -> min n m
    | a -> gcd a (min n m)

(* 前半n個を無視 *)
let rec ignore_n n l = match n with
    | 0 -> l 
    | n -> ignore_n (n-1) (List.tl l) 

(* 差を取っていく *)
let rec diff_rev f l =
    let rec g acc = function
    | x :: y :: [] -> (f x y) :: acc
    | x :: y :: tl -> g ((f x y) :: acc) (y :: tl)
    | _ -> assert false
    in g [] l



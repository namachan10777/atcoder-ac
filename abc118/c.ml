let rec gcd n m = match (max n m) mod (min n m) with
    | 0 -> min n m
    | a -> gcd a (min n m)

let () = Scanf.scanf "%d\n" @@ fun n ->
    let a = Array.init n (fun _ -> Scanf.scanf " %d" (fun a -> a)) in
    Printf.printf "%d" @@ Array.fold_left gcd a.(0) a

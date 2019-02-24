let rec ignore_n n l = match n with
    | 0 -> l 
    | n -> ignore_n (n-1) (List.tl l) 

let rec diff_rev f l =
    let rec g acc = function
    | x :: y :: [] -> (f x y) :: acc
    | x :: y :: tl -> g ((f x y) :: acc) (y :: tl)
    | _ -> assert false
    in g [] l


let () =
    Scanf.scanf "%d %d\n" @@ fun n m ->
        let arr = Array.init m (fun _ -> Scanf.scanf " %d" (fun x -> x)) in
        if n >= m
        then print_endline "0"
        else arr
            |> Array.to_list
            |> List.sort (-)
            |> diff_rev (-)
            |> List.sort (-)
            |> ignore_n (n-1)
            |> List.fold_left (+) 0
            |> fun x -> Printf.printf "%d" (-x)

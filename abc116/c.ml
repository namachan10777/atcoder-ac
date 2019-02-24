let rec f hs =
    let (_, l) = Array.fold_left (fun (st, cnt) h ->
        h > 0, if h > 0 && not st then cnt + 1 else cnt)
        (false, 0)
        hs in
    if l > 0
    then l + f (Array.map (fun n -> n - 1) hs)
    else l

let id x = x

let () = Scanf.scanf "%d\n" @@ fun n ->
    Array.init n (fun _ -> Scanf.scanf " %d" id)
    |> f |> Printf.printf "%d\n"

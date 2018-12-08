let id x = x

let () = Scanf.scanf "%d\n" @@ fun n ->
    let p = Array.init n (fun _ -> Scanf.scanf "%d\n" id) in
    (Array.fold_left (+) 0 p) - ((Array.fold_left max 0 p) / 2)
    |> Printf.printf "%d"

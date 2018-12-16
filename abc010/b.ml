let () = Scanf.scanf "%d\n" @@ fun n ->
    Array.init n (fun _ -> Scanf.scanf " %d" (fun a ->
        let a = a mod 6 in
        if a > 2 then a - 2 else if a = 1 then 1 else 0))
    |> Array.fold_left (+) 0
    |> Printf.printf "%d"

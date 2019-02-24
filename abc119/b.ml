let () = Scanf.scanf "%d\n" @@ fun n ->
    Array.init n (fun _ -> Scanf.scanf "%f %s\n" (fun x u ->
        if u = "BTC"
        then x *. 380000.0
        else x))
    |> Array.fold_left (+.) 0.0
    |> Printf.printf "%f"

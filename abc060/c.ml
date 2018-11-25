let () = Scanf.scanf "%d %d\n" @@ fun n t ->
    Array.init n (fun _ -> Scanf.scanf " %d" (fun t -> t))
    |> Array.fold_left (fun (t1, sum) t2 -> (t2, sum+min (t2-t1) t)) (0, t)
    |> snd
    |> Printf.printf "%d"

let () = Scanf.scanf "%d %d\n" @@ fun n k ->
    let a =
        Array.init n @@ fun _ -> Scanf.scanf "%d %d\n" @@ fun a b -> (a, b) in
    Array.sort (fun (x, _) (y, _) -> x - y) a;
    let rec f acc i =
        if (snd a.(i)) + acc >= k then fst a.(i) else f ((snd a.(i)) + acc) (i+1)
    in f 0 0 |> Printf.printf "%d"

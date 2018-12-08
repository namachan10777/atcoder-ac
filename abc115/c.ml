let id x = x

let () = Scanf.scanf "%d %d\n" @@ fun n k ->
    let h = Array.init n (fun _ -> Scanf.scanf "%d\n" id) in
    Array.sort (-) h;
    Array.init (n-k+1) (fun i -> h.(i+k-1) - h.(i))
    |> Array.fold_left min 1000000001
    |> Printf.printf "%d"

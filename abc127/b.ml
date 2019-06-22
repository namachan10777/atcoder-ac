let () = Scanf.scanf "%d %d %d" @@ fun r d x2000 ->
    let rec f x = function
        | 0 -> ()
        | n ->
            Printf.printf "%d\n" (r * x - d);
            f (r * x - d) (n-1)
    in f x2000 10

let () = Scanf.scanf "%d %d %d" @@ fun a b n ->
    let x = min (b-1) n in
    Printf.printf "%d" @@ (a*x)/b - a * (x/b)

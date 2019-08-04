let () = Scanf.scanf "%d %d %d" @@ fun a b c ->
    Printf.printf "%d" @@ max 0 (c - a + b)

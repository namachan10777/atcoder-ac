let () = Scanf.scanf "%d %d %d" @@ fun a b c ->
    Printf.printf "%d" @@ min (b / a) c

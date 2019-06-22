let () = Scanf.scanf "%d %d\n%d %d" @@ fun h w y x ->
    Printf.printf "%d" @@ (h - y) * (w - x)

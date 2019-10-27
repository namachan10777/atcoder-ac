let () = Scanf.scanf "%d %d\n" @@ fun a b ->
    Printf.printf "%d" @@ if a < 10 && b < 10 then a * b else -1

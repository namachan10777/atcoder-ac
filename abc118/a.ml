let () = Scanf.scanf "%d %d" @@ fun a b ->
    Printf.printf "%d" @@ if b mod a = 0 then a+b else b-a

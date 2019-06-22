let () = Scanf.scanf "%d %d" @@ fun a b ->
    Printf.printf "%d" @@ if a > 12
    then b
    else if a > 5
    then b / 2
    else 0

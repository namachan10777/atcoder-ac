let () = Scanf.scanf "%d\n%d\n%d\n%d\n%d\n%d\n" @@ fun n a b c d e ->
    let m = List.fold_left min e [a;b;c;d] in
    Printf.printf "%d" @@ 4 + (n + m - 1) / m

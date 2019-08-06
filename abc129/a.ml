let () = Scanf.scanf "%d %d %d" @@ fun p q r ->
    Printf.printf "%d" @@ List.fold_left min max_int [p+q;q+r;r+p]

        

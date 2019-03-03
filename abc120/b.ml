let () = Scanf.scanf "%d %d %d" @@ fun a b k ->
    let rec f n = function
        | 1 when a mod n == 0 && b mod n == 0 -> n
        | k when a mod n == 0 && b mod n == 0 -> f (n-1) (k-1)
        | k -> f (n-1) k
    in Printf.printf "%d" @@ f 100 k

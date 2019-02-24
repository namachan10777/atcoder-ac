let rec f i = function
    | 1 -> i+3
    | 2 -> i+3
    | 4 -> i+3
    | n when n mod 2 = 0 ->
        f (i+1) (n / 2)
    | n ->
        f (i+1) (n*3+1)

let () = Scanf.scanf "%d" @@ fun s -> Printf.printf "%d" (f 1 s)

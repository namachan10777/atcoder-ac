let rec size = function
    | 0 -> 1
    | n -> 3 + 2 * size (n - 1) 

let rec full = function
    | 0 -> 1
    | n -> 1 + 2 * full (n - 1)

let rec f x = function
    | 0 -> if x > 0 then 1 else 0
    | n -> let m = (size n) / 2 + 1 in
        if x < m
        then f (x - 1) (n - 1)
        else (full (n - 1)) + 1 + f (x - m) (n - 1)

let () = Scanf.scanf "%d %d" @@ fun n x ->
    f x n |> Printf.printf "%d"

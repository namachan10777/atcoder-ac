let iota n =
    let rec f acc = function
        | -1 -> acc
        | 0 -> 0 :: acc
        | n -> f (n :: acc) (n - 1)
    in f [] (n-1)

let rec all = function
    | [] -> true
    | true :: t -> all t
    | false :: t -> false

let rec any = function
    | [] -> false
    | true :: t -> true
    | false :: t -> any t

let ans yes no = function
    | true -> yes
    | false -> no

let () = Scanf.scanf "%d %d %d\n" @@ fun a b c ->
    iota b
    |> List.map (fun n -> (a * (n+1)) mod b = c)
    |> any
    |> ans "YES" "NO"
    |> Printf.printf "%s"

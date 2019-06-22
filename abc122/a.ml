let () = Scanf.scanf "%s" @@ (function
    | "A" -> "T"
    | "T" -> "A"
    | "C" -> "G"
    | "G" -> "C" )
    |> print_endline

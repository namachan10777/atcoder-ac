let () = Scanf.scanf "%d/%d/%d" @@ fun y m d ->
    print_endline @@
        if y > 2019 || m > 4
        then "TBD"
        else "Heisei"

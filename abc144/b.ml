let () = Scanf.scanf "%d" @@ fun n ->
    let gen = [1;2;3;4;5;6;7;8;9] in 
    let r = gen
        |> List.map (fun y -> List.map (fun x -> x * y) gen)
        |> List.flatten
        |> List.map (fun x -> x = n)
        |> List.fold_left (||) false
    in
    if r
    then Printf.printf "Yes"
    else Printf.printf "No"

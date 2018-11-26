let () = Scanf.scanf "%d %d\n" @@ fun n m ->
    let cnt = Array.make n 0 in
    for _ = 1 to m do
        Scanf.scanf "%d %d\n" @@ fun a b ->
        cnt.(a-1) <- cnt.(a-1)+1;
        cnt.(b-1) <- cnt.(b-1)+1;
    done;
    cnt |> Array.map (Printf.printf "%d\n") |> ignore

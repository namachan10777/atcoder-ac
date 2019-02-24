let () = Scanf.scanf "%d %d\n" @@ fun n m ->
    let arr = Array.make m 0 in
    for i=1 to n do
        Scanf.scanf "%d " (fun k ->
            for j=1 to k do
                Scanf.scanf " %d" (fun a -> arr.(a) <- arr.(a) + 1);
            done)
    done;
    Printf.printf "%d" @@ Array.fold_left (fun t c -> if c = n then t + 1 else t) 0 arr

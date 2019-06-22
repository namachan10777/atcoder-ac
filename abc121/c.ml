let () = Scanf.scanf "%d %d" @@ fun n m ->
    let s = Array.init n (fun _ ->
        Scanf.scanf "\n%d %d" (fun a b -> a, b)) in
    Array.sort (fun (a, _) (b, _) -> a - b) s;
    let m = ref m in
    let p = ref 0 in
    let i = ref 0 in
    while !m > 0 do
        p := !p + (fst s.(!i)) * (min !m (snd s.(!i)));
        m := !m - (snd s.(!i));
        i := !i + 1;
    done;
    Printf.printf "%d" !p

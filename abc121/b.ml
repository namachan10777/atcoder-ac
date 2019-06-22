(* 本当に辛い *)
let array_map2 f a b =
    let l = Array.length a in
    if l = 0 then [||] else begin
        let r = Array.make l (f (Array.unsafe_get a 0) (Array.unsafe_get b 0)) in
        for i = 0 to l - 1 do
            Array.unsafe_set r i (f (Array.unsafe_get a i) (Array.unsafe_get b i))
        done;
        r
    end

let () = Scanf.scanf "%d %d %d\n" @@ fun n m c ->
    let b = Array.init m (fun _ ->
        Scanf.scanf " %d" (fun b -> b)) in
    Array.init n (fun _ ->
        Scanf.scanf "\n" (fun _ -> ()) 0;
        let a = Array.init m (fun _ ->
            Scanf.scanf " %d" (fun a -> a)) in
        let t = array_map2 (fun a b -> a * b) a b
        |> Array.fold_left (+) 0 in
        if t + c > 0
        then 1
        else 0)
    |> Array.fold_left (+) 0
    |> Printf.printf "%d"

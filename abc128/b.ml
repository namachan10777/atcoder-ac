let () = Scanf.scanf "%d" @@ fun n ->
    let sp = Array.init n (fun _ -> Scanf.scanf "%d %d\n" (fun s p -> (s, p))) in
    Array.sort (fun x y -> compare (fst 

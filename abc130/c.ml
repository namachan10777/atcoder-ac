let () = Scanf.scanf "%d %d %d %d" @@ fun w h x y ->
    let s = (float_of_int (w * h)) /. 2. in
    let sp = if x * 2 = w && y * 2 == h then 1 else 0 in
    Printf.printf "%f %d" s sp

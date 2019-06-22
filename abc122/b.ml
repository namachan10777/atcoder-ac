let () = Scanf.scanf "%s" @@ fun s ->
    let a = Array.map (fun c -> c = 'A' || c = 'C' || c = 'G' || c = 'T') s in
    let max = ref 0 in
    let cnt = ref 0 in
    for i = 0 to (Array.length a) - 1 do
        begin if a.(i)
        then
            cnt := !cnt + 1
            (*if !cnt > !max then max := cnt else ()*)
        else
            cnt := 0
        end
    done;

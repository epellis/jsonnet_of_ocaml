open Base

let rec to_string = function
  | `Assoc obj -> assoc_to_string obj
  | `List _ -> ""
  | `String _ -> ""
  | `Int _ -> ""
  | `Float _ -> ""

and assoc_to_string obj =
  let pairs =
    List.map
      ~f:(fun (key, value) -> Printf.sprintf "\"%s\": %s" key (to_string value))
      obj
  in
  let map_contents =
    List.fold ~init:""
      ~f:(fun before pair -> Printf.sprintf "%s, %s" before pair)
      pairs
  in
  Printf.sprintf "{%s}" map_contents

open Base

let rec to_string = function
  | `Assoc obj -> assoc_to_string obj
  | `List l -> list_to_string l
  | `String s -> Printf.sprintf "\"%s\"" s
  | `Int i -> Printf.sprintf "%d" i
  | `Float f -> Printf.sprintf "%f" f
  | `Bool true -> "true"
  | `Bool false -> "false"
  | `Null -> "null"

and assoc_to_string obj =
  List.map
    ~f:(fun (key, value) -> Printf.sprintf "\"%s\": %s" key (to_string value))
    obj
  |> String.concat ~sep:", " |> Printf.sprintf "{%s}"

and list_to_string l =
  List.map ~f:to_string l |> String.concat ~sep:", " |> Printf.sprintf "[%s]"

let%expect_test "Assoc empty to_string" =
  print_string (Lib.Json_output.to_string (`Assoc []));
  [%expect {|{}|}]

let%expect_test "Assoc single to_string" =
  let data = `Assoc [ ("key", `String "value") ] in
  print_string (Lib.Json_output.to_string data);
  [%expect {|{"key": "value"}|}]

let%expect_test "Assoc many to_string" =
  let data = `Assoc [ ("key", `String "value"); ("a", `String "b") ] in
  print_string (Lib.Json_output.to_string data);
  [%expect {|{"key": "value", "a": "b"}|}]

let%expect_test "List empty to_string" =
  print_string (Lib.Json_output.to_string (`List []));
  [%expect {|[]|}]

let%expect_test "List single to string" =
  let data = `List [ `String "a" ] in
  print_string (Lib.Json_output.to_string data);
  [%expect {|["a"]|}]

let%expect_test "List many to string" =
  let data = `List [ `String "a"; `String "b" ] in
  print_string (Lib.Json_output.to_string data);
  [%expect {|["a", "b"]|}]

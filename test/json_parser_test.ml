(* open Lib *)

let%expect_test "Test greeting teacher" =
  print_string "Hello";
  [%expect {|Hello|}]

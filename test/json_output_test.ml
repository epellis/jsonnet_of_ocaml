let%expect_test "Test Assoc Empty Print" =
  print_string (Lib.Json_output.to_string (`Assoc []));
  [%expect {|{}|}]

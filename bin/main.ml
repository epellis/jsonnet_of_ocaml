open Lib
open Core
open Lexing

let rec parse_and_print lexbuf =
  match Lib.Json_parser.parse_with_error lexbuf with
  | Some value ->
      printf "%s\n" (Json_output.to_string value);
      parse_and_print lexbuf
  | None -> ()

let loop filename () =
  let inx = In_channel.create filename in
  let lexbuf = Lexing.from_channel inx in
  lexbuf.lex_curr_p <- { lexbuf.lex_curr_p with pos_fname = filename };
  parse_and_print lexbuf;
  In_channel.close inx

let () =
  Command.basic_spec ~summary:"Parse and display JSON"
    Command.Spec.(empty +> anon ("filename" %: string))
    loop
  |> Command.run

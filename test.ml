open Tsdl
open Result

let main () = match Sdl.init Sdl.Init.video with
| Error (`Msg e) -> Sdl.log "Init error: %s" e; exit 1
| _ ->
	match Sdl.create_window ~w:640 ~h: 480 "SDL OpenGL" Sdl.Window.opengl with
	| Error (`Msg e) -> Sdl.log "Create window error: %s" e; exit 1
	| Ok w ->
		Sdl.delay (Int32.of_string "3000");
		Sdl.destroy_window w;
		Sdl.quit ();
		exit 0

let () = main ()

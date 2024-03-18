//+build orca
//+private
package runtime

// TODO
// foreign import 
// fd_write :: proc "contextless" ()
import "core:sys/wasm/wasi"

_stderr_write :: proc "contextless" (data: []byte) -> (int, _OS_Errno) {
	data := (wasi.ciovec_t)(data)
	n, err := wasi.fd_write(1, {data})
	return int(n), _OS_Errno(err)
}

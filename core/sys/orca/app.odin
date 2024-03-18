package orca

import "core:c"

window :: u64

mouse_cursor :: enum c.int {
	ARROW,
	RESIZE_0,
	RESIZE_90,
	RESIZE_45,
	RESIZE_135,
	TEXT,
}

window_style :: enum u32 {
	NO_TITLE = 0x01 << 0,
	FIXED_SIZE = 0x01 << 1,
	NO_CLOSE = 0x01 << 2,
	NO_MINIFY = 0x01 << 3,
	NO_FOCUS = 0x01 << 4,
	FLOAT = 0x01 << 5,
	POPUPMENU = 0x01 << 6,
	NO_BUTTONS = 0x01 << 7
}

event_type :: enum c.int {
	NONE,
	KEYBOARD_MODS, //TODO: remove, keep only key?
	KEYBOARD_KEY,
	KEYBOARD_CHAR,
	MOUSE_BUTTON,
	MOUSE_MOVE,
	MOUSE_WHEEL,
	MOUSE_ENTER,
	MOUSE_LEAVE,
	CLIPBOARD_PASTE,
	WINDOW_RESIZE,
	WINDOW_MOVE,
	WINDOW_FOCUS,
	WINDOW_UNFOCUS,
	WINDOW_HIDE, // rename to minimize?
	WINDOW_SHOW, // rename to restore?
	WINDOW_CLOSE,
	PATHDROP,
	FRAME,
	QUIT
}

key_action :: enum c.int {
	NO_ACTION,
	PRESS,
	RELEASE,
	REPEAT
}

key_code :: enum c.int {
	KEY_UNKNOWN = '\x00',
	KEY_SPACE = ' ',
	KEY_APOSTROPHE = '\'',
	KEY_COMMA = ',',
	KEY_MINUS = '-',
	KEY_PERIOD = '.',
	KEY_SLASH = '/',
	KEY_0 = '0',
	KEY_1 = '1',
	KEY_2 = '2',
	KEY_3 = '3',
	KEY_4 = '4',
	KEY_5 = '5',
	KEY_6 = '6',
	KEY_7 = '7',
	KEY_8 = '8',
	KEY_9 = '9',
	KEY_SEMICOLON = ';',
	KEY_EQUAL = '=',
	KEY_LEFT_BRACKET = '[',
	KEY_BACKSLASH = '\\',
	KEY_RIGHT_BRACKET = ']',
	KEY_GRAVE_ACCENT = '`',
	KEY_A = 'a',
	KEY_B = 'b',
	KEY_C = 'c',
	KEY_D = 'd',
	KEY_E = 'e',
	KEY_F = 'f',
	KEY_G = 'g',
	KEY_H = 'h',
	KEY_I = 'i',
	KEY_J = 'j',
	KEY_K = 'k',
	KEY_L = 'l',
	KEY_M = 'm',
	KEY_N = 'n',
	KEY_O = 'o',
	KEY_P = 'p',
	KEY_Q = 'q',
	KEY_R = 'r',
	KEY_S = 's',
	KEY_T = 't',
	KEY_U = 'u',
	KEY_V = 'v',
	KEY_W = 'w',
	KEY_X = 'x',
	KEY_Y = 'y',
	KEY_Z = 'z',
	KEY_WORLD_1 = 161,
	KEY_WORLD_2 = 162,
	KEY_ESCAPE = 256,
	KEY_ENTER = 257,
	KEY_TAB = 258,
	KEY_BACKSPACE = 259,
	KEY_INSERT = 260,
	KEY_DELETE = 261,
	KEY_RIGHT = 262,
	KEY_LEFT = 263,
	KEY_DOWN = 264,
	KEY_UP = 265,
	KEY_PAGE_UP = 266,
	KEY_PAGE_DOWN = 267,
	KEY_HOME = 268,
	KEY_END = 269,
	KEY_CAPS_LOCK = 280,
	KEY_SCROLL_LOCK = 281,
	KEY_NUM_LOCK = 282,
	KEY_PRINT_SCREEN = 283,
	KEY_PAUSE = 284,
	KEY_F1 = 290,
	KEY_F2 = 291,
	KEY_F3 = 292,
	KEY_F4 = 293,
	KEY_F5 = 294,
	KEY_F6 = 295,
	KEY_F7 = 296,
	KEY_F8 = 297,
	KEY_F9 = 298,
	KEY_F10 = 299,
	KEY_F11 = 300,
	KEY_F12 = 301,
	KEY_F13 = 302,
	KEY_F14 = 303,
	KEY_F15 = 304,
	KEY_F16 = 305,
	KEY_F17 = 306,
	KEY_F18 = 307,
	KEY_F19 = 308,
	KEY_F20 = 309,
	KEY_F21 = 310,
	KEY_F22 = 311,
	KEY_F23 = 312,
	KEY_F24 = 313,
	KEY_F25 = 314,
	KEY_KP_0 = 320,
	KEY_KP_1 = 321,
	KEY_KP_2 = 322,
	KEY_KP_3 = 323,
	KEY_KP_4 = 324,
	KEY_KP_5 = 325,
	KEY_KP_6 = 326,
	KEY_KP_7 = 327,
	KEY_KP_8 = 328,
	KEY_KP_9 = 329,
	KEY_KP_DECIMAL = 330,
	KEY_KP_DIVIDE = 331,
	KEY_KP_MULTIPLY = 332,
	KEY_KP_SUBTRACT = 333,
	KEY_KP_ADD = 334,
	KEY_KP_ENTER = 335,
	KEY_KP_EQUAL = 336,
	KEY_LEFT_SHIFT = 340,
	KEY_LEFT_CONTROL = 341,
	KEY_LEFT_ALT = 342,
	KEY_LEFT_SUPER = 343,
	KEY_RIGHT_SHIFT = 344,
	KEY_RIGHT_CONTROL = 345,
	KEY_RIGHT_ALT = 346,
	KEY_RIGHT_SUPER = 347,
	KEY_MENU = 348,
}

scan_code :: enum c.int {
	SCANCODE_UNKNOWN = 0,
	SCANCODE_SPACE = 32,
	SCANCODE_APOSTROPHE = 39,
	SCANCODE_COMMA = 44,
	SCANCODE_MINUS = 45,
	SCANCODE_PERIOD = 46,
	SCANCODE_SLASH = 47,
	SCANCODE_0 = 48,
	SCANCODE_1 = 49,
	SCANCODE_2 = 50,
	SCANCODE_3 = 51,
	SCANCODE_4 = 52,
	SCANCODE_5 = 53,
	SCANCODE_6 = 54,
	SCANCODE_7 = 55,
	SCANCODE_8 = 56,
	SCANCODE_9 = 57,
	SCANCODE_SEMICOLON = 59,
	SCANCODE_EQUAL = 61,
	SCANCODE_LEFT_BRACKET = 91,
	SCANCODE_BACKSLASH = 92,
	SCANCODE_RIGHT_BRACKET = 93,
	SCANCODE_GRAVE_ACCENT = 96,
	SCANCODE_A = 97,
	SCANCODE_B = 98,
	SCANCODE_C = 99,
	SCANCODE_D = 100,
	SCANCODE_E = 101,
	SCANCODE_F = 102,
	SCANCODE_G = 103,
	SCANCODE_H = 104,
	SCANCODE_I = 105,
	SCANCODE_J = 106,
	SCANCODE_K = 107,
	SCANCODE_L = 108,
	SCANCODE_M = 109,
	SCANCODE_N = 110,
	SCANCODE_O = 111,
	SCANCODE_P = 112,
	SCANCODE_Q = 113,
	SCANCODE_R = 114,
	SCANCODE_S = 115,
	SCANCODE_T = 116,
	SCANCODE_U = 117,
	SCANCODE_V = 118,
	SCANCODE_W = 119,
	SCANCODE_X = 120,
	SCANCODE_Y = 121,
	SCANCODE_Z = 122,
	SCANCODE_WORLD_1 = 161,
	SCANCODE_WORLD_2 = 162,
	SCANCODE_ESCAPE = 256,
	SCANCODE_ENTER = 257,
	SCANCODE_TAB = 258,
	SCANCODE_BACKSPACE = 259,
	SCANCODE_INSERT = 260,
	SCANCODE_DELETE = 261,
	SCANCODE_RIGHT = 262,
	SCANCODE_LEFT = 263,
	SCANCODE_DOWN = 264,
	SCANCODE_UP = 265,
	SCANCODE_PAGE_UP = 266,
	SCANCODE_PAGE_DOWN = 267,
	SCANCODE_HOME = 268,
	SCANCODE_END = 269,
	SCANCODE_CAPS_LOCK = 280,
	SCANCODE_SCROLL_LOCK = 281,
	SCANCODE_NUM_LOCK = 282,
	SCANCODE_PRINT_SCREEN = 283,
	SCANCODE_PAUSE = 284,
	SCANCODE_F1 = 290,
	SCANCODE_F2 = 291,
	SCANCODE_F3 = 292,
	SCANCODE_F4 = 293,
	SCANCODE_F5 = 294,
	SCANCODE_F6 = 295,
	SCANCODE_F7 = 296,
	SCANCODE_F8 = 297,
	SCANCODE_F9 = 298,
	SCANCODE_F10 = 299,
	SCANCODE_F11 = 300,
	SCANCODE_F12 = 301,
	SCANCODE_F13 = 302,
	SCANCODE_F14 = 303,
	SCANCODE_F15 = 304,
	SCANCODE_F16 = 305,
	SCANCODE_F17 = 306,
	SCANCODE_F18 = 307,
	SCANCODE_F19 = 308,
	SCANCODE_F20 = 309,
	SCANCODE_F21 = 310,
	SCANCODE_F22 = 311,
	SCANCODE_F23 = 312,
	SCANCODE_F24 = 313,
	SCANCODE_F25 = 314,
	SCANCODE_KP_0 = 320,
	SCANCODE_KP_1 = 321,
	SCANCODE_KP_2 = 322,
	SCANCODE_KP_3 = 323,
	SCANCODE_KP_4 = 324,
	SCANCODE_KP_5 = 325,
	SCANCODE_KP_6 = 326,
	SCANCODE_KP_7 = 327,
	SCANCODE_KP_8 = 328,
	SCANCODE_KP_9 = 329,
	SCANCODE_KP_DECIMAL = 330,
	SCANCODE_KP_DIVIDE = 331,
	SCANCODE_KP_MULTIPLY = 332,
	SCANCODE_KP_SUBTRACT = 333,
	SCANCODE_KP_ADD = 334,
	SCANCODE_KP_ENTER = 335,
	SCANCODE_KP_EQUAL = 336,
	SCANCODE_LEFT_SHIFT = 340,
	SCANCODE_LEFT_CONTROL = 341,
	SCANCODE_LEFT_ALT = 342,
	SCANCODE_LEFT_SUPER = 343,
	SCANCODE_RIGHT_SHIFT = 344,
	SCANCODE_RIGHT_CONTROL = 345,
	SCANCODE_RIGHT_ALT = 346,
	SCANCODE_RIGHT_SUPER = 347,
	SCANCODE_MENU = 348,
}

keymod_flags :: enum c.int {
	NONE = 0x00,
	ALT = 0x01,
	SHIFT = 0x02,
	CTRL = 0x04,
	CMD = 0x08,
	MAIN_MODIFIER = 0x10 /* CMD on Mac, CTRL on Win32 */
}

mouse_button :: enum c.int {
	LEFT = 0x00,
	RIGHT = 0x01,
	MIDDLE = 0x02,
	EXT1 = 0x03,
	EXT2 = 0x04,
}

// keyboard and mouse buttons input
key_event :: struct {
	action: key_action,
	scanCode: scan_code,
	keyCode: key_code,
	button: mouse_button,
	mods: keymod_flags,
	clickCount: u8,
}

// character input
char_event :: struct {
	codepoint: utf32,
	sequence: [8]c.char,
	seqLen: u8,
}

// mouse move/scroll
mouse_event :: struct {
	x: f32,
	y: f32,
	deltaX: f32,
	deltaY: f32,
	mods: keymod_flags,
}

// window resize / move
move_event :: struct {
	frame: rect,
	content: rect,
}

event :: struct {
	//TODO clipboard and path drop
	window: window,
	type: event_type,

	_: struct #raw_union {
		key: key_event,
		character: char_event,
		mouse: mouse_event,
		move: move_event,
		paths: str8_list,
	}
}

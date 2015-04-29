// Created by cgo - DO NOT EDIT

package main

import "unsafe"

import _ "runtime/cgo"

import "syscall"

var _ syscall.Errno
func _Cgo_ptr(ptr unsafe.Pointer) unsafe.Pointer { return ptr }

type _Ctype_void [0]byte

var _cgo_runtime_cgocall_errno func(unsafe.Pointer, uintptr) int32
var _cgo_runtime_cmalloc func(uintptr) unsafe.Pointer


// magic number - consult compiler/OS's docs
#pragma once

// you can include a system header file with <>,
#include <stdio.h>
// or include a local file with ""
//#include "header.h"
// you can also include .c file too
//#include "test.c"

// MACROS
// macro can be a constant
#define STR "thing"
// or a "function" (function-like macros)

// conditional
#if STR != "thing"
	puts("no");
#elif STR == "fuck"
	puts("something");
#else
	puts("yes");
#endif
// the preprocessor CAN'T do string comparison

/* 
 * do keep in mind though, that the preprocessor
 * in C have exactly one main responsibility:
 * blind substitution - it functions as code
 * in prerocessing, expanding the string in
 * accordance to the instruction, but once used in
 * code, it is substituted under any and all
 * condition
 */

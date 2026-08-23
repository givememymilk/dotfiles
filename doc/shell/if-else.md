The general form of an if-else clause in bash is:
```
	if cmd
	then
	    run if `cmd` returns zero
	elif another-cmd
	then
		run if `cmd` returns non-zero
	elif third-cmd
	then
		run if `another-cmd` returns non-zero
	elif ...

	fi
```

Or:
```
	if ! cmd
	then
		run if `cmd` returns non-zero
	elif ...
	fi
```

Do note that you don't need an else clause:
```
    if cmd
    then
        run if `cmd` returns zero
    fi
```

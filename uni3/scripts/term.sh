#!/bin/sh

if [ $DISPLAY = ':1' ]
then
	term=st
else
	#term=foot
	#echo 'no'
	term=st
fi

exec $term &

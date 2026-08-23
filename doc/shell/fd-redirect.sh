# file description redirection
# fd 0, 1, 2

echo 'stdout' >&1 # this goes to stdout
echo 'stderr' >&2 # this will goes stderr

exec 1>/dev/null # redirects stdout to /dev/null
exec 2>/dev/null # redirects stderr to /dev/null

echo 'no! my stdout!' >&1
echo 'no! my stderr!' >&2

exec 1>'test.txt'
exec 2>'test.txt'

echo 'stdout in a file'
echo 'stderr in a file'

import os

echo("Chat application started")

if paramCount() == 0:
  quit("Please specify server address, e.g: ./client localhost")

let serverAddress = paramStr(1)
echo("Connecting to ", serverAddress)

#proc fillString(): string =
#  result = ""
#  echo("Generating String")
#  for i in 0 .. 4:
#    result.add($i)
#
#const count = fill_string()
#stdout.write(count & "\n")

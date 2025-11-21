#This shell script accepts a number N and prints:
#Whether it is even or odd
#Whether it is positive,negative or zero
#!/bin/bash
if ! [[ $1 =~ ^-?[0-9]+$ ]]; then
        echo "Error not a number"
        exit 1
fi

number=$1

if (( number % 2 == 0 )); then
        echo "$number is even"
else
        echo "$number is odd"
fi

if (( number > 0 )); then
        echo "$number is positive"
elif (( number < 0 )); then
        echo "$number is negative"
else
        echo "$number is zero"
fi

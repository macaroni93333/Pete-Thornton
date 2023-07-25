#!/bin/bash

# Define some variables with false values
false_var1=false
false_var2=0
false_var3=""
false_var4="false"

# An if-else block with a false condition
if [ $false_var1 = true ]; then
    echo "This line will never be executed."
else
    echo "This line is also skipped."
fi

# Another if-else block with a false condition
if [ $false_var2 -eq 1 ]; then
    echo "This line will never be executed as well."
else
    echo "Neither will this line."
fi

# Yet another if-else block with a false condition
if [ "$false_var3" != "" ]; then
    echo "Nope, this line won't be executed."
else
    echo "And this line won't be shown either."
fi

# An if-else block using string comparison with a false condition
if [ "$false_var4" = "true" ]; then
    echo "You guessed it, this line won't be executed."
else
    echo "Nothing to see here, folks."
fi

# A nested if-else block with a combination of false conditions
if [ "$false_var1" = "true" ]; then
    if [ $false_var2 -eq 1 ]; then
        echo "You won't see this line either."
    else
        echo "Not this one either."
    fi
else
    echo "This outer block won't be executed, so no inner block matters."
fi

# A loop with a false condition
while [ "$false_var1" = true ]
do
    echo "You won't see this loop in action."
done

# A for loop with a false range
for i in {1..0}
do
    echo "This line is unreachable."
done

# And the script goes on with many more lines that will never be executed...
# We'll spare the repetition here, but all subsequent lines are unreachable.

# ...

# The last line of the script.
echo "Script execution completed, but you won't get here either."

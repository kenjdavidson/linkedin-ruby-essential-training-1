# Control Structures

## Conditionals

### If/Else/Elsif

I really hate **elsif** was that `e` just too much typing?

### Unless

Generally used in place of a negative test being true.

```
if !product.is_available
    puts "not available"
end
```

would have the `unless` alternative

```
unless product.is_available
    puts "not available"
end
```

At this point, not a huge fan.

### Case

Makes a number of additions to the Java case:

- Case when boolean (default with no variable)
- Case with comparisons (normal case against value matching) but has the addition of `Range`(s)

With a key that `else` replaces `default`.

### Shorthand Operators

Statement modifiers

```
# Max score is 10
score = 10 unless score <= 10
```

## Loops

Loops don't have as many options, as there are better iteration features:

- Loop
```
loop do
    # ...
end
```

- While
```
while <expression>

end
```

- until 
```
until <expression>
end
```

all of which can be controlled by the usuals:

- `break` which work well with shorthand conditionals
- `next` like `continue`

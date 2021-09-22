# Custom Methods

## Define and Call Methods

- Methods (instead of functions) because of object oriented.
- Must start with lowercase or underscore (not common)
- Must contain letters, digits or underscores
- May end with `?` which will return a boolean by convention
- May end with `!` which changes content in place (dangerous method)

## Variable Scope

## Arguments

On top of the normal arugment stuff, just some standardized "rules":

- Parenthesis are optional, that should only be used when using arguments
- Unless the method is a special method (Ruby best practices)

### Default values

- Must be at the end if there are mixed non/default value 
- Best practice for default and optional variables (order) is to use an `options = {}` hash argument

###  Splatted values

A splatted argument looks like any combination of arguments where one has an asterisk.  This is somewhat like Java `...` arguments except that they can go anywhere in the args list and will be parsed appropriately:

```
# Args is an array of names (or none)
def welcome(*names)
end

# Args requires at least greeting and then an array of names (or none)
def welcome(greeting, *names)
end
```

## Return Value

Unlike most languages that require `return x`, Ruby always returns the last expression.  Although using `return x` at any point in the method will do what is expected.

- Ruby `return` is actually a method, not key word, that is called within the callee method - which is apparently a little slower.
- Due to Ruby's funky conditional statements variables are often re-expressed

```
def subtract(x,y)
  result = x - y
  result = 0 if result < 0
  result # without this, the result of the last expression is nil
end
```

## Return Multiple Values

When returning multiple objects you generally use an `Array` or `Hash` which is built for multiple values.  

### Multiple Assignment

When working with `Array` you get the option of multiple assignment:

```
def values
  return [1,2]
end 

first, second = values
```

This works as you would expect, with the following caveats:

- When this is called with one variable it works just like you'd expect
```
first = values
```

- When there are not enough values it will just drop the last value
```
# values = [1,2,3]
first,second = values
```
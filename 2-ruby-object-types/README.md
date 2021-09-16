# Ruby Object 

Easy way to check on available methods - built in reflection > Java!

```
# irb
# => 100.methods
```

## Objects

- Calling methods don't require parentheses, which I'm defintely not a fan of and will probably need the most work to get used to.

## Variables

### Scope

Naming convention provides extra scoping, although I haven't found anything yet regarding the **normal** scope rules like block, function, class etc. of it these prefix are the only scoping:

Global `$variable` 
Class `@@variable`
Instance `@variable`
Local `variable`
block `variable`

## Numbers

- Keeps precision (as expected) with regards to numerical expressions.

### Integers

### Floats

## Strings

Includes some interesting methods (operator overrides):

- `"hello" * 3` prints "hello" three times.  The reverse is not true, as `Integer.*` does not accept `String`
- The `name << "davidson"` append operator.

### Escaping

Escaping special characters `\n`, `\t`, etc. only work within double quotes.  Leads to some questions:
- Single quotes memory efficient when not escaping?

### Interpolation

"Double quotes can include #{msg} or anything #{1+1}", which leads to the same questions regarding why single quotes would be used:
- Single quotes more efficient when not interpolating?

## Arrays

Unlike Java Arrays are indefinite, there is no `ArrayIndexOutOfBounds` (unsure how I feel about this)
Using negaive index `names[-1]` returns back the first item from the end (not that reverse are not zero indexed).

### Indices

Array indices can be:
- Single `names[1]`
- Start,End `names[1,2]` which is like `substring(start,end)`
- Range `names[2..4]` (inclusive)

### Methods

Arrays also provide operator functions for adding and removing from:

```
irb(main):044:0> [1,2,3] - [2]
=> [1, 3]
irb(main):045:0> [1,2,3] + [4,5,6]
=> [1, 2, 3, 4, 5, 6]
```

## Hashes

Hashes/Maps are object indexed, where equality is determined by...
- Java allows `hashCode()` and `equals()` 
- 

```
car = {
    'brand' => 'Ford',
    'model' => 'Mustang',
    ...
}
```

Once created they are managed the same way:

```
car['model`] = 'Escape'
```

## Symbols

Symbols will begin with a colon `:name` and contains:
- all lowercase
- no spaces
- no quotes

are mainly used to **label** types of data - for example when used in a map:

```
person = {
    :first_name => 'Ken',
    :surname => 'Davidson'
}
```

and provide better memory management.  Or a more JSON formatting:


```
person = {
    first_name: 'Ken',
    surname: 'Davidson'
}
```

where the keys **ARE SYMBOLS**!!!

## Booleans

The only thing that is `false` is false.  There is no `truthy` like Javascript (nil != false), although `!nil` does work to determine existence.

## Ranges

Inclusive Range `(1..5)` = `1,2,3,4,5`
Exclusive Range `(1...5)` = `1,2,3,4`

Although when using `end` method the response will still be `5` for both!!
Ranges can be used with any Object that has internal order.

## Constants

Constants seem pretty annoying:
- The constant must start with a capital letter (Temp and TEMP)
- When attempting to change a constant it will give a warning, but **WILL ACTUALLY CHANGE** so apparently not a constant in reality

## Nil



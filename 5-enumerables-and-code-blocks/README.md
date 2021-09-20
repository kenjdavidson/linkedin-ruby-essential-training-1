# Enumerables and Code Blocks

## What are Enumerables?

A set of items that can be counted / enumerated

- Arrays
- Ranges
- Hashes
- Strings (used to be enumerable - bytes vs chars)

Implemented by the `Enumerable` module, which provides the **mixins** logic.

## What is a Code Block?

Code blocks are sections of code that are surrounded (blocked) by:

- `do` and `end` - multi lines or take actions or make changes
- `{` and `}` - single lines or return data without making changes

## Find Methods

See file `# ruby 5-enumerables-and-code-blocks/find_methods.rb`

## Map Methods

Iternate through, execute and modify:

### `map`
Always returns an `Array` which is built using the **result** of the code block.  So using things like `puts` or if statements can be dangerous due to them returning `nil` instead of what was expected.

Also contains a `map!` which overwrites the current array.

### `collect`

**The number of items in will always equal the number of items out**

## Inject Methods

Has an accumulator value it uses through processing.  Ruby convention is to use `memo` as the variable name:

- `inject` / `reduce` 

See file `# ruby 5-enumerables-and-code-blocks/inject_methods.rb`

## Sort Methods

Sort methods use the comparison operator `<=>` which is `less than, equals, greater than` which will return one of three values:
- `-1` if the first is less than
- `0` if equal
- `1` if the first is greater than

Effectively just a shorter `obj.compareTo()`.  Cause why not replace it?

## Merge Methods

Merging two different hashes together.  Blocks are used to control the rules when performing the join.

See file `# ruby 5-enumerables-and-code-blocks/merge_methods.rb`
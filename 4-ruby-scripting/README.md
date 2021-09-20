# 4. Ruby Scripting

## Best Practices

### File Names

Should always end with `.rb` just to make it obvious it's a Ruby file

### Shebang

Files should start with `#!/usr/bin/env ruby` which will automatically run with Ruby on *nix systems.

- Ask the environment `/env` instead of `#!/usr/bin/ruby` or other direct path.

## Exit a Running Script

Programatically:

- `exit` or `exit!`
- `abort(msg)` 

Interupt:

- `CTRL-C`

## Input and Output

Output:

- `puts` (with `\n`)
- `print`

Input:

- `gets` accepts all items up until the `\n` from stdin
# Vim Cheat Sheet

## Glossary

- file-line - the actual line in the file, even when it wraps visually
- display-line - the visible row on screen when a long file-line wraps

```text
file-line 1: short line                            | display-line 1
file-line 2: this is one long file-line that wraps | display-line 2
             into multiple display-lines on screen | display-line 3
             when the window is narrow             | display-line 4
file-line 3: short line                            | display-line 5
```

## Motions

### Horizontal

- `h` - left
- `l` - right
- `0` - beginning of file-line
- `|` - beginning of file-line
- `123|` - move to file-line column 123
- `g0` - beginning of display-line
- `^` - first non-whitespace char of file-line
- `g^` - first non-whitespace char of display-line
- `$` - end of file-line
- `g$` - end of display-line
- `w/W` - start of word/WORD _forwards_
- `b/B` - start of word/WORD _backwards_
- `e/E` - end of word/WORD _forwards_
- `ge/gE` - end of word/WORD _backwards_
- `f` - find char _forwards_
- `F` - find char _backwards_
- `t` - until char _forwards_
- `T` - until char _backwards_
- `;` - repeat last `f/F/t/T`
- `,` - reverse last `f/F/t/T`

### Vertical

- `k` - up one file-line
- `gk` - up one display-line
- `j` - down one file-line
- `gj` - down one display-line
- `-` - first non-whitespace char of previous line
- `+` - first non-whitespace char of next line
- `<CR>` - first non-whitespace char of next line
- `gg` - top of file
- `G` - bottom of file
- `123G/123gg` - move to line 123
- `H` - top of screen
- `M` - middle of screen
- `L` - bottom of screen
- `ctrl-u` - half-page up
- `ctrl-d` - half-page down
- `ctrl-b` - page up
- `ctrl-f` - page down

### Jumps (Horizontal & Vertical)

- `sxx` - sneak/jump to next pair of chars (`xx`) _forwards_
- `Sxx` - sneak/jump to next pair of chars (`xx`) _backwards_
- `%` - matching pair/bracket
- `(` - previous sentence
- `)` - next sentence
- `{` - previous paragraph
- `}` - next paragraph
- `/pattern` - search _forwards_
- `?pattern` - search _backwards_
- `n` - next search match
- `N` - previous search match

### Text Objects

- `a` - around
- `i` - inside
- `w/W` - word/WORD
- `s` - sentence
- `p` - paragraph
- `b` - brackets
- `q` - quotes
- `i` - indent
- `c` - class
- `f` - function

## Operators

- `c` - change
- `d` - delete
- `y` - yank
- `v` - visual
- `V` - visual-line
- `ctrl-v` - visual-block
- `qx` - record macro into `x` register
- `'x` - replay macro from `x` register
- `gc` - comment
- `gu` - lowercase
- `gU` - uppercase
- `>` - indent more
- `<` - indent less
- `=` - auto-indent
- `.` - repeat

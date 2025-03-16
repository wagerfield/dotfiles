# Spell

## Managing Spell List

- Next misspelled word: `]s`
- Previous misspelled word: `[s`
- Mark word as misspelled file: `zw`
- Add word to spell file: `zg`
- Spelling suggestions: `z=`

## Updating Spell List

Run the following command:

    :UpdateSpellList

1. Lowercase entire `en.utf-8.add` file: `guag`
2. Sort current file and deduplicate words: `:%sort u` (`u = unique`)
3. Rebuild `.spl` file: `:mkspell! %`

# Connect bash filters using pipes
# Write and run bash scripts

# Goal: Convert the SOURCEURL into a headline.

# Pattern: /text-text-text/
# tr - translate

cat tiny_events.tsv |
    cut --fields 6 |
    grep -E "/[^/]+-[^/]+[/.]" --only-matching |
    tr --complement "[\n[:alnum:]]" " " |
    uniq --count

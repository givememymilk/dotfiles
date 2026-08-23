- 3 official encodings:
    - UTF-8
    - UTF-16
    - UTF-32

# concepts
- Grapheme: one codepoint
- Grapheme cluster: one visual thingy (one character, one emoji, etc...)

# How it works
- UTF-8: text stream with a marker, more or less
- UTF-16: uses surrogate pair - this one will have its own section
- UTF-32: uses 4 bytes for every codepoint indiscriminately

# Emojis
- Each emojis can be multiple codepoints with a Zero Width Joiner (ZWJ)
- It's sorta like math: ZWJ is like the plus sign, and codepoints are like numbers (ZWJ can be anywhere from 2 to 4 bytes depending on encoding)
- There's also regional indicator for flags (apparently) (each indicator is one codepoint)
- There's also skin tone modifier and gender modifier being separate things - neat (do note that it uses a single code point)

# Unordered index
- The Grapheme Cluster Boundary Algorithm
- The UAX - basically things unicode don't tell you about
- Hans unification
- BiDi
- Relevant UAX: UAX#29, UAX#15 ,UAX#9

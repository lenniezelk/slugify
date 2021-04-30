import strutils, unidecode

func slugify*(input: string, lowercase = true, delimiter = "-"): string =
  ## Convert input string to a slug
  let s = unidecode input
  result = newStringOfCap(s.len)
  var word = true
  for c in s:
    if c in Whitespace:
      if word:
        word = false
        result.add delimiter
    else:
      word = true
      result.add if lowercase: c.toLowerAscii else: c

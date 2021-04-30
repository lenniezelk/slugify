# Slugify

A nim library for converting a string into a slug suitable for use in
URLs, IDs, filenames etc. Non latin characters are converted to their closest approximate
Latin characters.

## Usage

```nim
import slugify

let slug = slugify("i am a string")
echo slug # i-am-a-string
```

## Options

| Name        | Type     | Default | Description               |
| ----------- | -------- | ------- | ------------------------- |
| `delimiter` | `String` | `"-"`   | Separator between words   |
| `lowercase` | `bool`   | `true`  | Convert text to lowercase |

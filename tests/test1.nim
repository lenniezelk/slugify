# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import slugify

test "can slugify":
  check slugify("i am a string") == "i-am-a-string"

test "multiple spaces collapsed":
  check slugify("i  am a  string") == "i-am-a-string"

test "lowercase":
  check slugify("i aM a String") == "i-am-a-string"

test "no lowercase":
  check slugify("i aM a String", false) == "i-aM-a-String"

test "delimiter":
  check slugify("i  am a  string", delimiter="=") == "i=am=a=string"

test "non latin replaced":
  check slugify("Ceñía is Äußerst") == "cenia-is-ausserst"

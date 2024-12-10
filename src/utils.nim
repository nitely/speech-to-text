
func setSlice*(s: var seq[float32], slice: Slice[int]) =
  let first = slice.a
  let last = slice.b
  assert first >= 0
  assert last <= s.high
  if first > last:
    s.setLen(0)
    return
  for index in first .. last:
    s[index-first] = s[index]
  s.setLen(last-first+1)

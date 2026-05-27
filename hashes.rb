# Ruby Hashes Examples"

proviences = {
  "SD" => "Sindh",
  "KPK" => "Khyber Pukhtun Khawa",
  "BLOCH" => "Blochistan",
  "PUN" => "Punjab"
}

puts("All Proviences of Pakistan: #{proviences}")
puts("4th provience of Pakistan: #{proviences["BLOCH"]}")
puts("KPK Provience are in reversed ORDER: #{(proviences["KPK"].reverse())}")
puts("Proviences are sorted: #{proviences.sort()}")
puts("ALL CAPS: #{proviences["SD"].upcase}")
puts("small caps: #{proviences["PUN"].downcase}")


m = []
26.times do
  line = gets.split
  m << [line[0], "\e[#{line[1]}m", line[2].to_i, line[3].to_i]
end

# ここを回答 Answer here
# example：
# initialize a map
a = Array.new(20) { Array.new(16) { ["　", ""] } }
# configure the map
m.each do |mapping|
  name = mapping[0] + "　　"
  row = mapping[3] * 2
  col = mapping[2] * 2
  color = mapping[1]

  # Place the string in a 2x2 block
  a[row][col] = [color, name[0]].reverse
  a[row][col + 1] = [color, name[1]].reverse
  a[row + 1][col] = [color, name[2]].reverse
  a[row + 1][col + 1] = [color, name[3]].reverse
end

a.each { |row| puts row.map { |cell| "#{cell[1]}#{cell[0]}\e[0m" }.join }

# Using names.txt (./Javascript/Name_Scores.txt), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
#
# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
#
# What is the total of all the name scores in the file?


TEXT = File.read("./Javascript/Name_Scores.txt").gsub(/\"/,"").gsub(/\,/,"\n").split("\n").sort

def to_score(str_num)
  str_num.each_byte.map { |ch| ch - 64 }.inject(&:+)
end


def name_score(text_F)
  score = 0
  text_F.each_with_index do |el,i|
    points = to_score(el) * (i + 1)
    score += (points)
  end

  score
end

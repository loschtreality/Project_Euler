// Using names.txt (./Javascript/Name_Scores.txt), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
//
// For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
//
// What is the total of all the name scores in the file?


var fs = require('fs'), TEXT = fs.readFileSync('Javascript/Name_Scores.txt').toString().replace(/\"/g,"").replace(/\,/g,"\n").split('\n').sort()


function to_score(str) {
  var score = 0
  str.split('').forEach(function (el) {
    score += el.charCodeAt() - 64
  })
  return score
}

function name_score(text_F) {
  var total = 0

  text_F.forEach(function (el,i) {
    total += to_score(el) * (i + 1)
  })

  return total
}

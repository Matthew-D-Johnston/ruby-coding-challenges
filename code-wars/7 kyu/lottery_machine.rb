# lottery_machine.rb

def lottery(str)
  result = str.chars.select { |char| /\d/ =~ char }.uniq
  result.empty? ? "One more run!" : result.join
end

p lottery("wQ8Hy0y5m5oshQPeRCkG") == '805'
p lottery("ffaQtaRFKeGIIBIcSJtg") == 'One more run!'

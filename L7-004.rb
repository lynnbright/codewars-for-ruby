# L7-004 工廠的某台印表機只能印出 a 到 m 的字，請完成實作內容，把不應該出現的字算出來
# 看到這種換字的膝跳反應 => regex

def printer_error(s)

  item = s.split('')
  # count_a = item.select{|s| s.match(/[a-m]/)}.length
  count_n = item.select{|s| s.match(/[n-z]/)}.length  #也可以這樣寫 /[^a-m]/ 不是 a-m

  "#{count_n}/#{item.length}"
  # "#{count_n}/#{s.length}" #也可以這樣寫

end

RSpec.describe do
it "不該出現的字" do
  expect(printer_error("aaabbbbhaijjjm")).to eq '0/14'
  expect(printer_error("aaaxbbbbyyhwawiwjjjwwm")).to eq '8/22'
  expect(printer_error("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz")).to eq '3/56'
end
end

  
  #item.keep_if{|s| s.match(/[a-m]/)}.length => keep_if 會改變原陣列，要小心

  # if item.include?(/[a-m]/)  #["a", "a", "a", "b", "b", "b", "b", "h", "a", "i", "j", "j", "j", "m"]
  #   count_a += 1
  # else
  #   count_n += 1
  # end

  
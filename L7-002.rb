# L7-002 選出及格(60 分以上)的科目

def my_languages(scores)
  scores.keys.select {|x| scores[x] >= 60}
end

#hash 也可以直接用 select
#select {|key, value| block} → a_hash
#所以可以改寫成
# def my_languages(scores)
#   scores.select{|key,value| value >= 60}.keys
# end


RSpec.describe do
  it "選出及格(60 分以上)的科目" do
    expect(my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})).to eq ["Ruby", "Python"]
    expect(my_languages({"Hindi" => 60, "Dutch" => 93, "Greek" => 71})).to eq ["Hindi", "Dutch", "Greek"]
    expect(my_languages({"C++" => 50, "ASM" => 10, "Haskell" => 20})).to eq []
  end
end
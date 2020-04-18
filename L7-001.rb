# L7-001

def find_shortest(str)
  p str.split.sort_by{|s| s.length }.first.length
end

RSpec.describe do
  it "找出最短的字" do
    expect(find_shortest("bitcoin take over the world maybe who knows perhaps")).to be 3
    expect(find_shortest("turns out random test cases are easier than writing out basic ones")).to be 3
    expect(find_shortest("lets talk about javascript the best language")).to be 3
    expect(find_shortest("i want to travel the world writing code one day")).to be 1
    expect(find_shortest("Lets all go on holiday somewhere very cold")).to be 2
  end
end

#sort
#sort_by 用法
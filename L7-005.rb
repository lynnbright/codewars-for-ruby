# L7-005 一夥人去吃飯，大家先各自付帳，待後續再計算多退少補，請根據輸出結果完成以下實作。

def split_the_bill(bill)

  avg = bill.values.sum / 3
  bill.keys.map do |i|  
    bill[i] -= avg
  end

  bill
end

RSpec.describe do
  it "帳單計算" do
    expect(split_the_bill('A' => 20, 'B' => 15, 'C' => 10)).to eq({'A' => 5.00, 'B' => 0.00, 'C' => -5.00})
    expect(split_the_bill('A' => 40, 'B' => 25, 'X' => 10)).to eq({'A' => 15.00, 'B' => 0.00, 'X' => -15.00})
  end
end

#思路
#先算平均數
#用 value - 平均數
#用總數減掉 value 20 - 5  / 15 - 0  / 10 -(-5)
#               40 - 15 / 25 - 0  / 10 -(-15)


#我現在想要把原本的 values 值 減掉平均數
  #請問：要怎麼重新寫入 values 值 => 用 key 去拿 value
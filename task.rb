# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names << "斎藤"
  names.each do |name|
    p name
  end

end

def q2
  array1 = %w(dog cat fish)
  array2 = %w(bird bat tiger)

  # 以下に回答を記載
  array = array1 + array2
  p array

end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  puts numbers.count(3)
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  puts sports.compact
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  puts "array1 = []"
  puts array1.empty?

  puts "array2 = []"
  puts array2.empty?

end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  p numbers2 = numbers1.map {|number| number * 10}
  
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  p array.map!(&:to_i)
  
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  programming_languages.map!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)
  
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) do |name,index|
    puts "会員No.#{index} #{name}さん"
  end
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    if food.include?("うに")
      puts "#{food}は、好物です"
    else 
      puts "#{food}は、まぁまぁ好きです"
    end
  end
end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  def user_hoby_list(sports)
    sports.flatten.uniq.each.with_index(1) do |spName,index|
      puts "No#{index} #{spName}"
    end
  end
  puts "ユーザーの趣味一覧"
  user_hoby_list(sports)
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  puts data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  puts user_data.merge!(update_data)
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  key_list = data.keys
  p key_list
end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  puts data1[:age] ? "ok" : "NG"
  puts data2[:age] ? "ok" : "NG"
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
  end

end

class UserQ17
  # 以下に回答を記載
  def initialize(**user_profile)
    @name = user_profile[:name]
    @age = user_profile[:age]
    @gender = user_profile[:gender]
    @admin = user_profile[:admin]
  end

  def info
    puts <<~TEXT
      名前: #{@name}
      年齢: #{@age}
      性別: #{@gender}
      管理者権限: #{@admin ? "有り" : "無し"}
    TEXT
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男", admin: true)
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男", admin: false)

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
  def initialize(**user_profile)
    @name = user_profile[:name]
    @age = user_profile[:age]
  end

  def introduce
    if @age >= 20
      puts "こんにちは，#{@name}と申します。宜しくお願いいたします。"
    else
      puts "はいさいまいど〜，#{@name}です！！！"
    end
  end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい
  attr_accessor :name
  def initialize(name:)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  attr_accessor :name,:age
  def initialize(**user_profile)
    @name = user_profile[:name]
    @age = user_profile[:age]
  end
end

class Zoo
  # 以下に回答を記載
  def initialize(**zoo_info)
    @name = zoo_info[:name]
    @entry_fee = zoo_info[:entry_fee]
  end

  def info_entry_fee(user)
    age_classification = case user.age
    when 0..5 
      @entry_fee[:infant]
    when 6..12 
      @entry_fee[:children]
    when 13..64 
      @entry_fee[:adult]
    when 65..120 
      @entry_fee[:senior]
    else
       "‐‐‐‐"
    end
    puts "#{user.name}さんの入場料金は #{age_classification} 円です"
  end
end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]
  
  users.each do |user|
    zoo.info_entry_fee(user)
  end
end
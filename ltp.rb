=begin
puts 'hello world'
puts 1+2
puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0
puts 1+2
puts 2*3
puts 5-8
puts 9/2
pts "Hours in a year:"
puts 365*24
puts "Minutes in a decade:"
puts (((10*365)*24)*60)*60
puts "My age in seconds:"
puts ((((27*365)*24)*60)*60)*60
puts 'what\'s your first name?'
a = gets.chomp
puts 'what\'s your middle name?'
b = gets.chomp
puts 'what\'s your last name?'
c = gets.chomp
d = (a+b+c).length.to_s
puts "Did you know that there are #{d} letters in your name? That's pretty great!"
puts 'Hello, ' + a + ' ' + b + ' ' + c + ', you have an awesome name!!'
puts "Hey there, what's your favourite number?"
a = gets.chomp.to_i
b = a.to_i + 1
puts "Cool, #{a} is a pretty good number, but you know what's even better than #{a}?"
puts "#{b}, baby! The bigger the better!"
puts self
puts "Adam is the best".center(50)
puts "You damn right he is!".center(50)
puts "Jenkins? What the hell do you want?"
a = gets.chomp
puts "WHADDYA MEAN '#{a.upcase}'!? YOU'RE FUCKING FIRED!!!"
bum = 27
puts "Table of contents".center(50)
puts
print "Chapter 1: Getting started".ljust(bum)
puts "page  1".rjust(bum)
print "Chapter 2: Numbers".ljust(bum)
puts "page  9".rjust(bum)
print "Chapter 3: Letters".ljust(bum)
puts "page 13".rjust(bum)
puts 95.5.abs
srand 1976 # uses the 1976 seed pattern
puts rand(100)
puts rand(1000)
puts ""
srand 1976
puts rand(100)
puts rand(1000)
input = ''
while input != 'fuck you!'
  puts input
  input = gets.chomp
end
puts "That's what she said! Boom, see ya!"
num = 99
while num > 0
  puts "#{num} bottles of beer on the wall,"
  puts "#{num} bottles of beer,"
  puts "Take one down, pass it around,"
  puts "#{num - 1} bottles of beer on the wall!"
  puts
  num = num - 1
end
puts "SHIT SON, all those bottles of beer are GONE!"
a = ""
b = 0
while (b != 3)
  puts "Say something to grandma."
  a = gets.chomp
  if a != a.upcase
    puts "Grandma: \"HUH!? SPEAK UP SONNY!\""
  else
    puts "Grandma: \"Really? Isn't that nice dear! I used to love doing that back in #{rand(1930..1950)}\""
  end
  if a == "BYE!"
    b = b + 1
  else
    b = 0
  end
end
a = ""
b = ""
puts "Gimme a starting year"
a = gets.chomp.to_i
puts "Okay, gimme an ending year"
b = gets.chomp.to_i
while a <= b
  if a % 4 == 0
    puts a
  end
  a = a + 1
end
arr = [[true,false],["chicken", 1986],[1.01, nil]]
puts arr.pop 3
buns = []
a = true
while a != ""
  puts "Whaddya want?"
  a = gets.chomp
  buns.push a
end
puts buns.sort
bum = 27
arr = ["Table of contents", "Chapter 1: Getting started", "page  1",
       "Chapter 2: Numbers", "page  9", "Chapter 3: Letters", "page 13"]
arr.each_with_index do |x,i|
  if x == arr[0]
    puts x.center(50)
    puts
  elsif i%2 == 0
    puts x.rjust(bum)
  else
    print x.ljust(bum)
  end
end
turkey = puts "turkey"
def say_moo no_of_moos
  puts 'mooo...'*no_of_moos
end
puts say_moo 1
puts turkey
puts say_moo 1
puts turkey

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    elsif reply == 'no'
      return false
    end
    puts 'Please answer "yes" or "no"'
  end
end
puts ask 'Kwestchun1'
k = ask 'Kwestchun2'
puts ask 'Kwestchun3'
puts 'Thanks'
print k

def romanize num
  arr = num.split("")
  arr_new = []

  if (arr[-1].to_i != 0) && (arr[-1].to_i <= 3)
    arr_new << "I"*arr[-1].to_i
  elsif (arr[-1].to_i == 4)
    arr_new << "IV"
  elsif (arr[-1].to_i > 4) && (arr[-1].to_i < 9)
    arr_new << "V" + "I"*((arr[-1].to_i)-5)
  elsif (arr[-1].to_i == 9)
    arr_new << "IX"
  end

  if (arr[-2].to_i != 0) && (arr[-2].to_i < 5)
    arr_new << "X"*arr[-2].to_i
  elsif (arr[-2].to_i != 0) && (arr[-2].to_i >= 5)
    arr_new << "L" + "X"*((arr[-2].to_i)-5)
  end

  if (arr[-3].to_i != 0) && (arr[-3].to_i < 5)
    arr_new << "C"*arr[-3].to_i
  elsif (arr[-3].to_i != 0) && (arr[-3].to_i >= 5)
    arr_new << "D" + "C"*((arr[-3].to_i)-5)
  end

  if arr[-4].to_i != 0
    arr_new << "M"*arr[-4].to_i
  end
  arr_new = arr_new.reverse.join
end
puts romanize "4321"
puts romanize "1234"
puts romanize "3456"
puts romanize "3999"

def sort_it_out arr
  recursion arr, []
end

def recursion unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |x|
    if x.to_s.downcase < smallest.to_s.downcase
      still_unsorted << smallest
      smallest = x
    else
      still_unsorted << x
    end
  end
  sorted << smallest
  recursion still_unsorted, sorted
end

puts sort_it_out ["Adam","Robin","Wenham","is","the","best!"]

def shuffle arr
  new_arr = []
  arr.each do |obj|
    new_arr.insert(rand(arr.length+1), obj)
  end
  new_arr = new_arr.compact
  new_arr
end
p shuffle [1,2,3,4,5,6,7,8,9,10]

def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
# No more special cases! No more returns!

  num_string = '' # This is the string we will return.
  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']
  zillions = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
              ['quadrillion', 15],
              ['quintillion', 18],
              ['sextillion', 21],
              ['septillion', 24],
              ['octillion', 27],
              ['nonillion', 30],
              ['decillion', 33],
              ['undecillion', 36],
              ['duodecillion', 39],
              ['tredecillion', 42],
              ['quattuordecillion', 45],
              ['quindecillion', 48],
              ['sexdecillion', 51],
              ['septendecillion', 54],
              ['octodecillion', 57],
              ['novemdecillion', 60],
              ['vigintillion', 63],
              ['googol', 100]]
# "left" is how much of the number
# we still have left to write out.
# "write" is the part we are
# writing out right now.
# write and left...get it? :)

  left = number
  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base # How many zillions left?
    left = left - write*zil_base # Subtract off those zillions.
    if write > 0
# Now here's the recursion:
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name
      if left > 0
# So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '
      end
    end
  end
  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))
# Since we can't write "tenty-two" instead of
# "twelve", we have to make a special exception
# for these.
      num_string = num_string + teenagers[left-1]
# The "-1" is because teenagers[3] is
# 'fourteen', not 'thirteen'.
# Since we took care of the digit in the
# ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
# The "-1" is because tens_place[3] is
# 'forty', not 'thirty'.
    end
    if left > 0
# So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
# The "-1" is because ones_place[3] is
# 'four', not 'three'.
  end
# Now we just return "num_string"...
  num_string
end
puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
puts english_number(109238745102938560129834709285360238475982374561034)

def english_number number
  if number < 0
    return 'Please only enter positive numbers'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = ['one','two','three','four','five','six','seven','eight','nine']
  tens_place = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
  teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  zillions = [['hundred',           2],
              ['thousand',          3],
              ['million',           6],
              ['billion',           9],
              ['trillion',          12],
              ['quadrillion',       15],
              ['quintillion',       18],
              ['sextillion',        21],
              ['septillion',        24],
              ['octillion',         27],
              ['nonillion',         30],
              ['decillion',         33],
              ['undecillion',       36],
              ['duodecillion',      39],
              ['tredecillion',      42],
              ['quattuordecillion', 45],
              ['quindecillion',     48],
              ['sexdecillion',      51],
              ['septendecillion',   54],
              ['octodecillion',     57],
              ['novemdecillion',    60],
              ['vigintillion',      63],
              ['googol',            100]]

#zillions
  left = number
  while zillions.length > 0
    zil_pair =        zillions.pop
    zil_name =        zil_pair[0]
    zil_base =  10 ** zil_pair[1]

    write = left/zil_base
    left = left - write*zil_base

    if write > 0
      prefix = english_number write

      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        num_string = num_string + ' '
      end
    end
  end


#tens
  write = left/10
  left = left - (write * 10)

  if write > 0
    if (write == 1) && (left > 0)
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

#digits
  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end
begin
  english_number 17164
rescue => exception
  puts exception.backtrace
end

def bottles_of_beer num
  while num > 0
    puts "#{english_number num} bottles of beer on the wall,"
    puts "#{english_number num} bottles of beer,"
    puts "take one down, pass it around,"
    puts "#{english_number (num - 1)} bottles of beer on the wall!"
    puts
    num = num - 1
  end
  puts "SHIT SON, all those bottles of beer are GONE!"
end
puts bottles_of_beer 9999

require 'yaml'
test_arr = [['steel','buns','mcstallion'],['is','the','best'],['so','shut','up'],[true,false],[123,321],[[123, true],[321,false,nil]]]
test_str = test_arr.to_yaml
filename = 'yamltest.txt'
File.open filename, 'w' do |f|
  f.write test_str
end
read_str = File.read filename

read_arr = YAML::load read_str

puts (read_str == test_str)
puts (read_arr == test_arr)
puts read_str
print read_str
puts read_arr
print read_arr

Dir.chdir 'C:/Development/Ruby/games_and_learning/pragprog/delete_me'

text_old = Dir['C:/Development/Ruby/games_and_learning/pragprog/*Document.txt']

puts 'Batch name?'
batch_name = gets.chomp
puts
print "Now moving #{text_old.length} files:"
file_num = 1

text_old.each do |txt_doc|
  print '.'
  new_name = "#{batch_name} - #{file_num}.txt"
  File.rename txt_doc, new_name unless File.exist?("#{batch_name} - #{file_num}.txt")
  file_num = file_num+1
end
puts
puts 'Finished, you legend'

def random_playlist
  puts "What would you like to call this playlist?"
  playlist_name = gets.chomp
  filename = "#{playlist_name}.m3u"

  Dir.chdir('C:/Development/Ruby/games_and_learning/pragprog/challenge_assets')

  all_music = Dir['G:/Music/**/*.mp3']

  File.open filename, 'w' do |f|
    buns = 100
    while buns > 0
      song = "#{all_music[rand(all_music.length)]}\n"
      f.write song
      buns = buns - 1
    end
  end

  puts 'All done, you handsome bastard!'
end
random_playlist

def shuffled_playlist file_arr
  file_arr = file_arr.sort
  len = file_arr.length

  2.times do
    l_index = 0
    r_index = len/2
    shuff = []

    while shuff.length < len
      if shuff.length%2 == 0
        shuff << file_arr[r_index]
        r_index = r_index + 1
      else
        shuff << file_arr[l_index]
        l_index = l_index + 1
      end
    end
    file_arr = shuff
  end

  arr = []
  cut = rand(len)
  idx = 0

  while idx < len
    arr << file_arr[(idx+cut)%len]
    idx = idx + 1
  end

  arr
end

buns = ["chicken","2","true","1.85","false","soup","12","13","is","the","best"]
puts shuffled_playlist buns

my_birthdate = Time.local(1986,1,11,02,00)
turning_one_billion_seconds_old = my_birthdate + 1000000000
puts turning_one_billion_seconds_old

def spank_it
  puts "What year were you born in?"
  reply = gets.chomp
  year = Time.local(reply.to_i)
  spanks = ((Time.new - year)/31557600).to_i
  spanks.times do
    puts "SPANK!"
  end
end
puts spank_it

def roman_to_english
  puts "Gimme a Roman number to convert, it'll be fun!"
  rom_num = gets.chomp
  rom_num = rom_num.gsub(/(ix)/,"9")
  rom_num = rom_num.gsub(/(iv)/,"4")
  rom_num = rom_num.upcase.split("")
  valid_num = false
  while valid_num == false
    rom_num.each do |chr| #check if valid
      if (chr != "M" && chr != "D" && chr != "C" && chr != "L" && chr != "X" && chr != "V" && chr != "I" && chr != "9" && chr != "4")
        puts "You gotta give me valid Roman numerals or this ain't gonna work!"
        rom_num = gets.chomp.upcase.split
      else
        valid_num = true
      end
    end
  end
  arr = []
  eng_num = 0
  rom_num.each do |chr|
    if chr == "M"
      arr << 1000
    end
    if chr == "D"
      arr << 500
    end
    if chr == "C"
      arr << 100
    end
    if chr == "L"
      arr << 50
    end
    if chr == "X"
      arr << 10
    end
    if chr == "V"
      arr << 5
    end
    if chr == "I"
      arr << 1
    end
    if chr == "9"
      arr << 9
    end
    if chr == "4"
      arr << 4
    end
  end
  arr.each do |num|
    eng_num = eng_num + num
  end
  puts eng_num
end
roman_to_english

def birthday_helper
  birth_dates = {}
  Dir.chdir('C:/Development/Ruby/games_and_learning/pragprog/challenge_assets')
  File.read('birthdays.txt').each_line do |line|
    line = line.chomp
    first_comma = 0
    while line[first_comma].chr != ',' && first_comma < line.length
      first_comma = first_comma + 1
    end

    name = line[0..(first_comma -1)]
    date = line[-12..-1]

    birth_dates[name] = date
  end

  puts "Who's birthday would you like to know?"
  request = gets.chomp
  response = birth_dates[request]

  if response == nil
    puts "Don't know that person. They're probably important enough to remember yourself..."
  else
    puts "#{request}'s birthday is on #{response[0..5]} of this year, lucky number #{2013 - response[-4..-1].to_i}!"
  end
end
birthday_helper

class OrangeTree
  def initialize
    @height = 0.25
    @age = 0
    @orange_count = 0
  end

  def count_oranges
    if @age < 5
      puts "Your orange tree is still too young to bear fruit."
    elsif @age > 50
      puts "Your orange tree in now too old to bear fruit."
    else
      puts "Your orange tree has #{@orange_count} oranges right now."
    end
  end

  def pick_an_orange
    if @orange_count > 0
      puts "You picked an orange, and it was yummy yummy in your tummy!"
      @orange_count = @orange_count - 1
    else
      puts "There aren't any oranges to pick!"
    end
  end

  def height
    puts "Your orange tree is #{@height}m tall."
  end

  def check_age
    puts "Your orange tree is #{@age} years old."
  end

  def done_for_the_year
    one_year_passes 1
  end
  def back_in_5
    one_year_passes 5
  end

  private

  def one_year_passes num
    if num == 5
      puts "Five years pass..."
      if @age < 70
        @age = @age + 5
      else
        puts "Your orange tree died from old age. Hooray!"
        exit
      end
      if @height < 3.0
        @height = @height + 1.25
      else
        @height = 3.0
      end
    else
      puts "One year passes..."
      if @age < 70
        @age = @age + 1
      else
        puts "Your orange tree died from old age. Hooray!"
        exit
      end
      if @height < 3.0
        @height = @height + 0.25
      else
        @height = 3.0
      end
    end
    if @age >= 5 && @age <= 15
      @orange_count = rand(5..10)
    elsif @age >= 16 && @age <= 30
      @orange_count = rand(15..20)
    elsif @age >= 31 && @age <= 40
      @orange_count = rand(19..35)
    elsif @age >= 41 && @age <= 50
      @orange_count = rand(15..25)
    elsif @age > 50
      @orange_count = 0
    end

  end
end

ot = OrangeTree.new
ot.count_oranges
ot.height
ot.check_age
ot.pick_an_orange
ot.back_in_5
ot.count_oranges
ot.check_age
ot.height
ot.pick_an_orange
ot.count_oranges
ot.check_age
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.pick_an_orange
ot.count_oranges
ot.height
ot.check_age
ot.pick_an_orange
ot.count_oranges
ot.done_for_the_year
ot.check_age
ot.height
ot.count_oranges
ot.pick_an_orange
ot.count_oranges
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.back_in_5
ot.check_age
ot.height
ot.count_oranges
ot.pick_an_orange
ot.count_oranges

class Dragon
  def initialize
    puts "Please choose a name for your new dragon."
    @name = gets.chomp
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestines = 0
    puts "#{@name} is born. Happy birthday, #{@name}!"
    action
  end

  def action
    puts "What would you like to do with #{@name}? (feed, walk, put to bed, toss, rock)"
    command = gets.chomp.downcase
    if command == "feed"
      feed
    elsif command == "walk"
      walk
    elsif command == "put to bed"
      put_to_bed
    elsif command == "toss"
      toss
    elsif command == "rock"
      rock
    else
      puts "I don't know that command"
      action
    end
  end

  def feed
    puts "You fed #{@name}. Om nom nom!"
    @stuff_in_belly = 10
    passage_of_time
    action
  end

  def walk
    puts "You took #{@name} for a walk. He had an enormous poo."
    @stuff_in_intestines = 0
    passage_of_time
    action
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        puts "#{@name} snores softly, filling the room with smoke."
        passage_of_time
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up, has a big yawn and looks groggily up at you."
    end
    action
  end

  def toss
    puts "You toss #{@name} high into the air and catch him."
    puts "#{@name} giggles happily and singes your eyebrows."
    passage_of_time
    action
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "#{@name} dozes off briefly..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "... but wakes when you stop."
    end
    action
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestines >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestines = @stuff_in_intestines + 1
    else
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate you and everyone you ever loved!"
      exit
    end

    if @stuff_in_intestines >= 10
      @stuff_in_intestines = 0
      puts "#{@name} has a mighty poo, filling your house!"
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles loudly..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name} does the toilet dance..."
    end
  end
end

Dragon.new

def profile block_desc, &block
  profiling = false

  if profiling
    start_time = Time.new
    block.call
    run_time = Time.new - start_time
    puts "#{block_desc} took #{run_time} seconds to complete"
  else
    block.call
  end
end

profile '25000 doublings' do
  num = 1
  25000.times do
    num = num + num
  end
  puts "#{num.to_s.length} digits"
end

profile 'count to one million' do
  num = 1
  1000000.times do
    num = num + 1
  end
end

def grandfather_clock &chime
  time = Time.new.to_a[2]  # could also use Time.new.hour (returns 0-23 so be careful!)
  if time > 12
    time = time - 12
  end
  if time == 0
    time = 12
  end
  time.times do
    chime.call
  end
end

grandfather_clock do
  puts 'DING DONG!'
end

=end

$nesting = 0

def log description, &block
  prefix = "  "*$nesting

  puts prefix + "Beggining #{description}..."
  $nesting = $nesting + 1
  buns = block.call
  $nesting = $nesting - 1
  puts prefix + "Ending #{description}...returning: " + buns.to_s
end

log 'outer block' do
  log 'feather keeper' do
    log 'feathers' do
      "SO MANY FEATHERS!"*2
    end
  end
  log 'buns keeper' do
    log 'buns' do
      32*2
    end
  end
end
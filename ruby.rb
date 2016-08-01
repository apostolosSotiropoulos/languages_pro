# # variables scope

# # methods params
	# ftiaxnw ena object τύπου string
	# το περνάω σε μια μέθοδο
	# προσθέτω ενα χαρακτηρα στο string μες στη μέθοδο
	# παρατηρώ ότι το string έχει αλλάξει κ εκτός μεθόδου
	# αν καταχωρήσω κάτι καινούριο στη μεταβλητή που δείχνει στο string εντός συνάρτησης τότε το string δεν μεταβάλλεται διότι

# # κλάσεις + κληρονομικότητα + how to create an object + πολλαπλή κληρονομικότητα;

# # callbacks withOUT params IDIOMATIC
# def callback
# 	puts ">>> We're in the block!"
# end
#
# def caller
#   puts "We're in the method!"
#   puts "Yielding to the block..."
#   yield
#   puts "We're back in the method!"
# end
#
# caller {callback}

# # callbacks with params everywhere IDIOMATIC
# def callback(callback_input)
# 	puts ">>> We're in the block with ...#{callback_input + 1}"
# end
#
# def caller(caller_input)
#   puts "We're in a method that calls callback"
# 	caller_input += 1
#   yield caller_input
#   puts "We're back in caller!"
# end
#
# caller(1) {|param| callback(param)}

# # callbacks with params non-idiomatic
# def callback(callback_input)
# 	puts ">>> We're in the block with ...#{callback_input + 1}"
# end
#
# def caller(caller_input, callback)
# 	caller_input += 1
#   puts "We're in a method that calls callback"
# 	callback.call(caller_input)
#   puts "We're back in caller!"
# end
#
# caller(1, method(:callback))

# # callbacks with procs
# is_even = Proc.new { |n|
# 	n%2==0
# }
#
# puts "is 2 even? #{is_even.call(2)}"
# puts "is 3 even? #{is_even.call(3)}"
#
# nums = [2, 3]
# puts "even nums from 2,3 #{nums.select(&is_even)}"
# puts "even nums from 2,3 #{nums.select {|n| is_even.call(n)} }"

# # callbacks with lambdas
# is_even = lambda { |n|
# 	n%2==0
# }
#
# puts "is 2 even? #{is_even.call(2)}"
# puts "is 3 even? #{is_even.call(3)}"
#
# nums = [2, 3]
# puts "even nums from 2,3 #{nums.select(&is_even)}"
# puts "even nums from 2,3 #{nums.select {|n| is_even.call(n)} }"

# # difference between lambdas & procs
# def batman_ironman_proc
#   victor = proc { return "Batman will win!" }
#   # or victor = Proc.new { return "Batman will win!" }
#   victor.call
#   "Iron Man will win!"
# end
#
# puts batman_ironman_proc # puts batman since procs do not return to caller
#
# def batman_ironman_lambda
#   victor = lambda { return "Batman will win!" }
#   # or victor = -> { return "Batman will win!" }
#   victor.call
#   "Iron Man will win!"
# end
#
# puts batman_ironman_lambda # puts batman since lambdas return to caller

# # server setup 4 web app
# # new things that are shown in tutorials should be added for all languages
# # revision every week

# # capitalize! test
# def capital_test(test_str)
# 	test_str.capitalize!
# end
#
# my_str = 'foo'
# puts "my string Before method call is #{my_str}"
# capital_test(my_str)
# puts "my string After method call is #{my_str}"

# # loop over dictionary
# test_dic = {'one' => '1', 'two' => 2, 'three' => 'tria'}
#
# test_dic.each { |key, value|
# 	puts value
# }
# # or
# test_dic.each do |key, value|
# 	puts key
# end

# # instantiate without new test
# class MyClass
#   def initialize(foo)
#     puts "This is the initialize method with #{foo}."
#   end
# end
#
# # working
# MyClass.new('attr')
#
# # not working
# MyClass('attr')

# # inline if

# # add attribute to object
# foo = Object.new()
# foo.sth = '5'
# puts foo.sth # undefined method error

# # check if times method works on int attributes
# class MyClass
# 	attr_accessor :my_num
# 	def initialize(num)
# 		@my_num = num
# 	end
# end
#
# foo = MyClass.new(5)
# foo.my_num.times do |i|
# 	puts "hello for the #{i}th time"
# end

# # check Hash addition
# pets = {'foo' => 'bar'}
# pets['sth'] = 'baz'
# puts pets

# # check iterator with ()
# friends = ["Milhouse", "Ralph", "Nelson", "Otto"]
# friends.each(puts('hello')) # wrong number of args

# # method number of args
# def what_up(greeting, *bros, outro)
#   bros.each { |bro| puts "#{greeting}, #{bro} #{outro}" }
# end
#
# what_up("What up", "Justin", "Ben", "Kevin Sorbo", "bb")

# # check if array.each change original array
# my_array = [1,2,3]
# my_array.each {|val| val += 1}
# puts my_array # same as if i had my_array.collect or my_array.map

# # check hash alternate form
# crew = {
#   captain: "Picard",
#   first_officer: "Riker",
#   lt_cdr: "Data",
#   lt: "Worf",
#   ensign: "Ro",
#   counselor: "Troi",
#   chief_engineer: "LaForge",
#   doctor: "Crusher"
# }
#
# puts "team captain is: #{crew[:captain]}"
# puts "keys are:"
# crew.each {|key, val| puts key}

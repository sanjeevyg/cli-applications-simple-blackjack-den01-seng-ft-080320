require "pry"

def welcome
  # code #welcome here
puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum =  deal_card + deal_card
  display_card_total(sum)
  sum 
end

def hit?(initial_round)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
    initial_round += deal_card
  elsif input == "s" 
    initial_round
  elsif (input != "s" && input != "h")
    invalid_command
    prompt_user
    input = get_user_input
    # card_total = initial_round
  end 
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  welcome
  tnum = initial_round
  until tnum > 21 do 
      tnum = hit?(tnum)
      display_card_total(tnum)
  end 
  end_game(tnum)
end

 

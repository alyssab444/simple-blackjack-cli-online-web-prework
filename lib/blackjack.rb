def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)  
end
def display_card_total(card_total)
  puts "Your cards add up to #{card_total}" 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end 

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round (deal_card, deal_card)

  
  sum = deal_card + deal_card
  display_card_total(sum)

  
end 

def hit?(myNumber)
   prompt_user
  result = get_user_input
  card_total = myNumber
    if result == 's'
      return myNumber 
    elsif result == 'h'
      sumInit = myNumber + deal_card
      return sumInit
    else
      invalid_command
    end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome()
 number = initial_round()
  until number > 21
  
  number = hit?(number)
  display_card_total(number)
  end
  end_game(number)
end
    

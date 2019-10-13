# { Spec } ------------------------------------------------------------------- #

# Create a Rock, Paper Scissors game with the following features:
#
# 1. Lizard, Spock options.
#     Rules: ('-->' = 'beats')
#     ------------------------------
#     Rock     -->  Lizard, Scissors
#     Paper    -->  Spock, Rock
#     Scissors -->  Paper, Lizard
#     Spock    -->  Rock, Scissors
#     Lizard   -->  Spock, Paper
#     ------------------------------
#
# 2. Abbreviated input options (e.g., 'r' instead of 'rock')
#
# 3. Score keeper. First to five wins the round.

# { Pseudocode Draft } ------------------------------------------------------- #

# Establish constants, CLASSIC_RULES and KASS_RULES
# Ask user if they want to play classic RPS or Kass version.
# - set_ruleset(choice)
# -- if choice == 'classic'
# --- ruleset = CLASSIC_RULES
# -- elsif choice == 'kass'
# --- ruleset == KASS_RULES
# -- end
# SET score = {player: 0, computer: 0}
# Ask user for their play, SET = user_choice
# Let computer play, SET = ai_choice
# Display user and computer choices.
# Determine who won based on ruleset
# - if ruleset == 'classic'
# -- if user_choice == ai_choice
# --- "It's a tie!"
# -- elsif CLASSIC_RULES[user_choice].include?(ai_choice)
# --- "Player wins!"
# --- score[:player] += 1
# -- else
# --- "Computer wins!"
# --- score[:computer] += 1
# -- end

# { Constants } -------------------------------------------------------------- #

CLASSIC_RULES = {
  :name_str  => "CLASSIC",
  :valid     => %w(rock paper scissors),
  'rock'     => %w(scissors),
  'paper'    => %w(rock),
  'scissors' => %w(paper)
}

KASS_RULES = {
  :name_str  => "KASS",
  :valid     => %w(rock paper scissors lizard spock),
  'rock'     => %w(lizard scissors),
  'paper'    => %w(spock rock),
  'scissors' => %w(paper lizard),
  'spock'    => %w(rock scissors),
  'lizard'   => %w(spock paper)
}

ABBREVIATIONS = {
  'r'  => 'rock',
  'p'  => 'paper',
  'sc' => 'scissors',
  'l'  => 'lizard',
  'sp' => 'spock',
  'k'  => 'kass',
  'c'  => 'classic'
}

# { Methods } ---------------------------------------------------------------- #

def display_message(msg)
  # Insert divider between all displayed messages.
  puts "---+"

  # Split message by newlines,
  msg_by_line = msg.split(/\n/) # split by newlines

  # decorate first and last lines with +, middle lines with |
  msg_by_line.each do |line|
    if line == msg_by_line.first || line == msg_by_line.last
      puts ">> + " + line
    else
      puts "   | " + line
    end
  end
end

def prompt(msg)
  display_message(msg)
  print ">> { "
end

def unabbreviate(string)
  # Identify appreviated strings and return unabbreviated version.

  if ABBREVIATIONS.keys.include?(string)
    ABBREVIATIONS[string]
  else
    string
  end
end

def get_valid_input(valid_inputs)
  # Use in place of Kernal#gets to only return input if valid.
  # Input if considered valid if it is included in the passed array.

  user_input = unabbreviate(gets.chomp.downcase)

  while valid_inputs.include?(user_input) == false
    prompt("Please enter one of the following: #{valid_inputs.join(', ')}")
    user_input = unabbreviate(gets.chomp.downcase)
  end

  user_input
end

def set_ruleset(choice)
  if choice == 'classic'
    CLASSIC_RULES
  elsif choice == 'kass'
    KASS_RULES
  end
end

def who_won?(ruleset, player_choice, computer_choice)
    case
    when player_choice == computer_choice
      'tie'
    when ruleset[player_choice].include?(computer_choice)
      'player'
    when ruleset[computer_choice].include?(player_choice)
      'computer'
    end
end

def display_results(player_choice, computer_choice, winner)
  winning_message = case winner
                    when 'tie'
                      "It's a tie!"
                    when 'player'
                      "Player wins!"
                    when 'computer'
                      "Computer wins!"
                    end

  # Sleep before and after for dramatic effect!
  sleep(0.75)
  display_message( <<~VERIFY
    You chose: #{player_choice}
    Computer chose: #{computer_choice}
    #{winning_message}
    VERIFY
  )
  sleep(1)
end

# { Main Program } ----------------------------------------------------------- #

prompt( <<~GREET
  Welcome to Rock, Paper Scissors!

  You can play by Classic Rules, or by Sam Kass's rules, otherwise known as
  "Rock, Paper, Scissors, Lizard, Spock".

  Enter 'classic' or 'kass' to choose which ruleset to play by.
  GREET
)

ruleset_choice = get_valid_input(%w(classic kass))
ruleset = set_ruleset(ruleset_choice)

display_message("The rulseset has been set to: #{ruleset[:name_str]}")

loop do
  prompt( <<~PLAY
    It's your turn! What will you play?
    Current ruleset: #{ruleset[:name_str]}
    (Available options: #{ruleset[:valid].join(', ')})
    PLAY
  )

  player_choice = get_valid_input(ruleset[:valid])
  computer_choice = ruleset[:valid].sample
  winner = who_won?(ruleset, player_choice, computer_choice)

  display_results(player_choice, computer_choice, winner)

  prompt("Play again?")
  again = get_valid_input(%w(y n))

  break if again == 'n'
end

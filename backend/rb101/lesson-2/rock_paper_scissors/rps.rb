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
#
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

CLASSIC_RULES = {
  :valid     => %w(rock paper scissors),
  'rock'     => %w(scissors),
  'paper'    => %w(rock),
  'scissors' => %w(paper)
}

KASS_RULES = {
  :valid     => %w(rock paper scissors lizard spock),
  'rock'     => %w(lizard scissors),
  'paper'    => %w(spock rock),
  'scissors' => %w(paper lizard),
  'spock'    => %w(rock scissors),
  'lizard'   => %w(spock paper)
}

#!/bin/bash

# Number of iterations
num_iterations=1000

# Initial strategies (cooperate or betray)
player1_strategy="cooperate"
player2_strategy="cooperate"

# Payoff matrix (values for player 1)
cooperate_cooperate_payoff=3
betray_cooperate_payoff=5
cooperate_betray_payoff=0
betray_betray_payoff=1

# Function to calculate payoff based on strategies
calculate_payoff() {
  if [ "$1" == "cooperate" ] && [ "$2" == "cooperate" ]; then
    echo "$cooperate_cooperate_payoff"
  elif [ "$1" == "betray" ] && [ "$2" == "cooperate" ]; then
    echo "$betray_cooperate_payoff"
  elif [ "$1" == "cooperate" ] && [ "$2" == "betray" ]; then
    echo "$cooperate_betray_payoff"
  elif [ "$1" == "betray" ] && [ "$2" == "betray" ]; then
    echo "$betray_betray_payoff"
  else
    echo "Invalid strategies"
    exit 1
  fi
}

# Run iterations
for ((i = 1; i <= num_iterations; i++)); do
  # Calculate payoffs for both players
  player1_payoff=$(calculate_payoff "$player1_strategy" "$player2_strategy")
  player2_payoff=$(calculate_payoff "$player2_strategy" "$player1_strategy")

  # Update strategies based on payoffs
  if [ "$player1_payoff" -gt "$player2_payoff" ]; then
    player1_strategy="cooperate"
  else
    player1_strategy="betray"
  fi

  if [ "$player2_payoff" -gt "$player1_payoff" ]; then
    player2_strategy="cooperate"
  else
    player2_strategy="betray"
  fi
done

# Print the final optimal strategies
echo "Optimal strategy for Player 1: $player1_strategy"
echo "Optimal strategy for Player 2: $player2_strategy"

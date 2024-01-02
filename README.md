# Prisoner-s-dilemma-computer-simulation
A computer simulation to find the optimal strategy in the Prisoner's dilemma
# Iterative Prisoner's Dilemma Script

## Overview

This bash script simulates the Iterative Prisoner's Dilemma, a classic game in game theory where two players repeatedly choose to cooperate or betray. The payoff for each player is determined by a specified payoff matrix. The script runs a defined number of iterations, calculates payoffs, and updates strategies based on past performance.

## Script Structure

- **Number of Iterations:** Set the `num_iterations` variable to determine the total number of iterations to run the simulation.

- **Initial Strategies:** Choose initial strategies for both Player 1 and Player 2. The script initializes with "cooperate" for both players.

- **Payoff Matrix:** Customize the payoff matrix values for Player 1 based on the combinations of cooperation and betrayal choices made by both players.

- **Calculate Payoff Function:** The `calculate_payoff` function computes the payoff for Player 1 based on the chosen strategies of both players.

- **Simulation Logic:** The script iterates through the specified number of iterations, calculating payoffs for both players and updating strategies based on the outcomes.

- **Print Optimal Strategies:** The final optimal strategies for Player 1 and Player 2 are printed based on the accumulated payoffs.

## Usage

1. **Set Parameters:** Customize the number of iterations, initial strategies, and payoff matrix values according to your requirements.

2. **Run the Script:** Execute the script by running `./prisoners_dilemma.sh` in your terminal.

3. **Review Results:** Observe the printed optimal strategies for both players after the simulation completes.

## Example Modification

Here's a brief example of how to modify the script:

```bash
# Example Payoff Matrix Modification
cooperate_cooperate_payoff=3
betray_cooperate_payoff=5
cooperate_betray_payoff=1
betray_betray_payoff=0

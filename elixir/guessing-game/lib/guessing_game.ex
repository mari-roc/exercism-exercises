defmodule GuessingGame do
  # Function header for default arguments
  def compare(secret_number, guess \\ :no_guess)

  # Missing guess
  def compare(_secret_number, guess) when guess == :no_guess or guess == nil, do: "Make a guess"

  # Correct guess
  def compare(secret_number, secret_number), do: "Correct"

  # Close guess
  def compare(secret_number, guess) when guess == secret_number + 1 or guess == secret_number - 1, do: "So close"

  # High guess
  def compare(secret_number, guess) when guess > secret_number, do: "Too high"

  # Low guess
  def compare(secret_number, guess) when guess < secret_number, do: "Too low"
end

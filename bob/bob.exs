defmodule Bob do
  def hey(input) do
    cond do
        true -> match_regex(input)
    end
  end

  def match_regex(phrase) do
    cond do
        Regex.match?(~r/\?$/, phrase)  -> "Sure."
        Regex.match?(~r/^\S[^a-z]*$/, phrase) -> "Whoa, chill out!"
        Regex.match?(~r/^\s+$|^$/, phrase) -> "Fine. Be that way!"
        Regex.match?(~r/[\d*\W^[^a-zA-Z]*$/, phrase) -> "Whatever."
    end
  end
end

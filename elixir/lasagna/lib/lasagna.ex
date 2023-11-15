defmodule Lasagna do
  @spec expected_minutes_in_oven() :: integer()
  def expected_minutes_in_oven(), do: 40

  @spec remaining_minutes_in_oven(integer()) :: integer()
  def remaining_minutes_in_oven(minutes) do
    expected_minutes_in_oven() - minutes
  end

  @spec preparation_time_in_minutes(integer()) :: integer()
  def preparation_time_in_minutes(layers), do: layers * 2

  @spec total_time_in_minutes(integer(), integer()) :: integer()
  def total_time_in_minutes(layers, minutes) do
    preparation_time_in_minutes(layers) + minutes
  end

  @spec alarm() :: String.t()
  def alarm(), do: "Ding!"
end

defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0  and legacy? == false -> :trace
      level == 1 and (legacy? == false or legacy? == true) -> :debug
      level == 2 and (legacy? == false or legacy? == true) -> :info
      level == 3 and (legacy? == false or legacy? == true) -> :warning
      level == 4 and (legacy? == false or legacy? == true) -> :error
      level == 5 and legacy? == false -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    cond do
      level == 0 and legacy? == true -> :dev1
      level == 4 and (legacy? == false or legacy? == true) -> :ops
      level == 5 and legacy? == false -> :ops
      level == 5 and legacy? == true -> :dev1
      level == 0  and legacy? == false -> false
      level == 1 and (legacy? == false or legacy? == true) -> false
      level == 2 and (legacy? == false or legacy? == true) -> false
      level == 3 and (legacy? == false or legacy? == true) -> false
      level == 4 and (legacy? == false or legacy? == true) -> false
      legacy? == false -> :dev2
      legacy? == true -> :dev1
    end
  end
end

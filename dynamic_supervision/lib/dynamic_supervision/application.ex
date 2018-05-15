defmodule DynamicSupervision.Application do
  @moduledoc false
  use Application

  def start(_, _) do
    children = [
      %{
        id: Redix,
        start: {Redix, :start_link, ["redis://redis:6379/0", [name: :redis]]}
      }
    ]

    Supervisor.start_link(children, :one_for_one)
  end
end

defmodule Servy.PledgeServer do
  def create_pledge(name, amount) do
    {:ok, id} = send_pledge_to_servie(name, amount)

    [ {"larry", 10} ]
  end

  def recent_pledges do
    [ {"larry", 10} ]
  end

  defp send_pledge_to_service(_name, _amount) do
    {:ok, "pledge-#{:rand.uniform(1000)}"}
  end
end

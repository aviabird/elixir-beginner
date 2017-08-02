# Ping pong game

# Create PingPong module
defmodule PingPong do
  @game_finish 11
  def ready do
    receive do
      {_sender, _action, @game_finish} ->
        IO.puts "Game is finished..."
      {sender, action, turn} ->
        hit_to(sender, switch(action), turn + 1)
        ready
    after
      1_000 -> IO.puts "time out player #{inspect player_pid}"
    end
  end

  def hit_to(opponent_id, action, turn) do
    IO.puts "Opponent #{inspect opponent_id}, action: #{inspect action}, turn #{inspect turn}"
    # Send a message to oppenend_id with tuple
    # player_id: id of the sending process
    # action: what needs to be done
    # turn  : turn count
    send(opponent_id, {player_pid(), action, turn})
  end
  
  defp switch(action) do
    case action do
      :ping -> :pong
      _____ -> :ping
    end
  end

  defp player_pid, do: self
end
# Ready function to receive messages from other processes
# Handle each message
# Send message to process
# Switch between ping/pong

# 1. get main process PID
player_1 = self

# 2. get spawned process PID
# player_2 = spawn(PingPong, :ready, [])
# player_2 = elem(Task.start(PingPong, :ready, []), 1)

# Final tidy way
player_2 = PingPong |> Task.start(:ready, []) |> elem(1)

# 3. inspect PID values
IO.puts "P1 #{inspect player_1} P2 #{inspect player_2}"

# 4. send message from main process to spawned process
PingPong.hit_to(player_2, :ping, 1)

# 5. start message receiver on main process
PingPong.ready


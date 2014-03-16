defmodule Test.Server do
  use GenServer.Behaviour

  def start_link() do
    :gen_server.start_link({:local, :test}, __MODULE__, [], [])
  end

  def init([]) do
    { :ok, [] }
  end

  def handle_call(:ping, _from, state) do
    { :reply, :pong, state}
  end

  def do_stuff() do
    :crypto.start()
  end

end
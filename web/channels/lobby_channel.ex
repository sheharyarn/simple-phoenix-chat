defmodule Chatroom.LobbyChannel do
  use Phoenix.Channel

  def join("lobby", _body, socket) do
    {:ok, socket}
  end

  def handle_in("new_message", payload, socket) do
    broadcast! socket, "new_message", payload
    {:noreply, socket}
  end

end


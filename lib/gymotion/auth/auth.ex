defmodule Gymotion.Auth do
  import Ecto.Query, warn: false
  alias Gymotion.Accounts.User
  alias Comeonin.Bcrypt
  alias Gymotion.Auth.Guardian

  def authenticate_user(user, given_password) do
    user
    |> check_password(given_password)
  end

  def login(conn, user) do
    conn
    |> Guardian.Plug.sign_in(user)
  end

  defp check_password(nil, _), do: {:error, "Incorrect username or password"}

  defp check_password(user, given_password) do
    case Bcrypt.checkpw(given_password, user.password) do
      true -> {:ok, user}
      false -> {:error, "Incorrect username or password"}
    end
  end
end

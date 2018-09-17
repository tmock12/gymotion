defmodule GymotionWeb.SessionController do
  use GymotionWeb, :controller

  alias Gymotion.Auth
  alias Gymotion.Accounts

  def new(conn, _) do
    render(conn, "new.html")
  end

  def create(conn, %{"session" => %{"email" => email, "password" => password}}) do
    with user <- Accounts.get_user!(%{email: email}),
         {:ok, authenticated} <- Auth.authenticate_user(user, password) do
      conn
      |> Auth.login(authenticated)
      |> assign(:current_user, authenticated)
      |> put_flash(:info, "Welcome!")
      |> redirect(to: marketing_path(conn, :index))
    else
      {:error, _reason} ->
        conn
        |> put_flash(:error, "Invalid username/password combination")
        |> render("new.html")
    end
  end
end

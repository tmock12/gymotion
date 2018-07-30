defmodule GymotionWeb.MarketingController do
  use GymotionWeb, :controller
  plug(:put_layout, "marketing.html")

  def index(conn, _params) do
    classes = [
      %{name: "Pilates"},
      %{name: "Abs & Butts"}
    ]

    render(conn, "index.html", classes: classes)
  end
end

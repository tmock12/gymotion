defmodule GymotionWeb.MarketingController do
  use GymotionWeb, :controller

  def index(conn, _params) do
    classes = [
      %{ name: "Pilates" },
      %{ name: "Abs & Butts" },
    ]
    render conn, "index.html", classes: classes
  end
end

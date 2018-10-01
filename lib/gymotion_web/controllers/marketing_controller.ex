defmodule GymotionWeb.MarketingController do
  use GymotionWeb, :controller
  plug(:put_layout, "marketing.html")

  def index(conn, _params) do
    classes = [
      %{
        day: "Luni",
        classes: [
          %{name: "Zumba Fitness", time: "19:00"},
          %{name: "Barre Stretch", time: "20:00"}
        ]
      },
      %{
        day: "Marţi",
        classes: [
          %{name: "Pilates", time: "7:00"},
          %{name: "Pilates", time: "20:00"}
        ]
      },
      %{
        day: "Miercuri",
        classes: [
          %{name: "Pilates", time: "7:00"},
          %{name: "Tone it up 30'", time: "19:00"},
          %{name: "Zumba Fitness", time: "20:00"}
        ]
      },
      %{
        day: "Joi",
        classes: [
          %{name: "Tone it up 30'", time: "18:00"},
          %{name: "Zumba Fitness", time: "19:00"},
          %{name: "Barre Stretch", time: "20:00"}
        ]
      },
      %{
        day: "Vineri",
        classes: [
          %{name: "Pilates", time: "18:00"},
          %{name: "Zumba Fitness", time: "19:00"}
        ]
      },
      %{
        day: "Sâmbătă",
        classes: [
          %{name: "Barre Stretch", time: "10:00"}
        ]
      }
    ]

    render(conn, "index.html", classes: classes)
  end
end

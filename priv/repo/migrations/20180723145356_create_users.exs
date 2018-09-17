defmodule Gymotion.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add(:name, :string)
      add(:password, :string)
      add(:email, :citext, required: true)
      add(:role, :string, required: true, default: "member")

      timestamps()
    end
  end
end

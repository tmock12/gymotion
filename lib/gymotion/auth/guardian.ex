defmodule Gymotion.Auth.Guardian do
  use Guardian, otp_app: :gymotion
  alias Gymotion.Accounts

  def subject_for_token(user = %Accounts.User{}, _claims), do: {:ok, "User:#{user.id}"}
  def subject_for_token(_, _claims), do: {:error, "Unknown resource type"}

  def resource_from_claims("User:" <> id), do: {:ok, Accounts.get_user!(id)}
  def resource_from_claims(_), do: {:error, "Unknown resource type"}
end

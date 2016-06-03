json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :active, :is_admin, :invoicepref :last_sign_in, :current_session_start, :invited_by
  json.url user_url(user, format: :json)
end

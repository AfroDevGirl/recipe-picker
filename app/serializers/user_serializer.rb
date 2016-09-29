class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :created_at
  link(:self) { user_url(object) }
end

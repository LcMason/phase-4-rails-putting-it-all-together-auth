class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :instructions, :minutes_to_complete

  has_one :user

  # what is the difference between belongs_to :user vs has_one :user
end

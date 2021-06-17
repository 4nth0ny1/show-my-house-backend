class CommentSerializer < ActiveModel::Serializer
  belongs_to :home
  attributes :id, :content
end

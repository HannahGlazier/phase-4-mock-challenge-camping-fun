class SignupSerializer < ActiveModel::Serializer
  # attributes :id
  has_one :activity, serializer: PostSignupSerializer
  # has_one :camper
end

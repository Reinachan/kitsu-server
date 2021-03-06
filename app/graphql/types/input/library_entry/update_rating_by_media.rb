class Types::Input::LibraryEntry::UpdateRatingByMedia < Types::Input::Base
  argument :media_id, ID, required: true
  argument :media_type, Types::Enum::MediaType, required: true
  argument :rating, Integer,
    required: true,
    description: 'A number between 2 - 20'
end

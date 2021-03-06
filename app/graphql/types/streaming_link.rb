class Types::StreamingLink < Types::BaseObject
  implements Types::Interface::Streamable
  implements Types::Interface::WithTimestamps

  description 'The stream link.'

  field :id, ID, null: false

  field :media, Types::Interface::Media,
    null: false,
    description: 'The media being streamed'

  field :url, String,
    null: false,
    description: 'Fully qualified URL for the streaming link.'
end

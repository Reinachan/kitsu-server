# rubocop:disable Metrics/LineLength
# == Schema Information
#
# Table name: blocks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  blocked_id :integer          not null, indexed
#  user_id    :integer          not null, indexed
#
# Indexes
#
#  index_blocks_on_blocked_id  (blocked_id)
#  index_blocks_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_42f8051bae  (user_id => users.id)
#  fk_rails_c7fbc30382  (blocked_id => users.id)
#
# rubocop:enable Metrics/LineLength

require 'rails_helper'

RSpec.describe Block, type: :model do
  it { should belong_to(:user).required }
  it { should belong_to(:blocked).class_name('User').required }
end

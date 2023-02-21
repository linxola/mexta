# frozen_string_literal: true

# == Schema Information
#
# Table name: spendings
#
#  id          :bigint           not null, primary key
#  amount      :decimal(16, 2)
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_spendings_on_category_id  (category_id)
#  index_spendings_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :spending do
    title { Faker::Company.name }
    amount { Faker::Number.decimal(l_digits: 2) }
    sequence(:description) { |n| "Spending #{n}" }
    user { nil }
    category { nil }
  end
end

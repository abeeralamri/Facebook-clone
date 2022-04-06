FactoryBot.define do
    factory :user do
      first_name            {"first"}
      last_name             {"test"}
      email                 {"test@gmail.com"}
      password              {"1234567"}
      password_confirmation {"1234567"}
    end
  end
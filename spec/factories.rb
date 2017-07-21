FactoryGirl.define do

  factory(:park) do
    name('Acadia')
    location('Maine')
    description('One of the most visited National parks in the country')
    park_type('National Park')
  end
end

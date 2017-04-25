FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@test.com"
  end
  factory :user do
    email { generate :email }
    first_name "Jon"
    last_name "Snow"
    password "password"
    password_confirmation "password"
    phone "55555555555"
    ssn 1234
    company "ABC Company"
  end

  factory :admin_user, class: "AdminUser" do
    email "user@user.com"
    first_name "Admin"
    last_name "User"
    password "password"
    password_confirmation "password"
    phone "55555555555"
    ssn 1234
    company "ABC Company"
  end

  factory :non_authorized_user, class: "User" do
    email { generate :email }
    first_name "Non"
    last_name "Authorize"
    password "password"
    password_confirmation "password"
    phone "55555555555"
    ssn 1234
    company "ABC Company"
  end
end 
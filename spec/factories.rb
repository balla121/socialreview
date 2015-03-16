# This will guess the User class
FactoryGirl.define do
  factory :user do
    name  "Weijie Gao"
    email "weijie.ga@gmail.com"
    password "password"
    activated true
    admin false
  end

  # This will use the User class (Admin would have been guessed)
  factory :admin, class: User do
    name "Admin"
    email "admin@gmail.com"
    password "password"
    activated true
    admin true
  end

  factory :comment, class: Comment do
    title "title"
    comment "this is a comment"
  end

  factory :micropost, class: Micropost do
    user_id 1
    content "micropost content"
    rating 5
    subject "micropost subject"
  end

  factory :reviewed, class: Reviewed do
    category_id nil
    name "reviewed"

  end
end
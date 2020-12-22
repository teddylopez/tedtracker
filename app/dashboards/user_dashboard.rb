require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    posts: Field::HasMany.with_options(searchable: false),
    id: Field::Number.with_options(searchable: false),
    email: Field::String.with_options(searchable: true),
    phone: Field::String.with_options(searchable: false),
    password: Field::String.with_options(searchable: false),
    first_name: Field::String.with_options(searchable: false),
    last_name: Field::String.with_options(searchable: false),
    created_at: Field::DateTime.with_options(searchable: false),
    updated_at: Field::DateTime.with_options(searchable: false),
    type: Field::String.with_options(searchable: false),
    ssn: Field::Number.with_options(searchable: true),
    company: Field::String.with_options(searchable: true)
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :posts,
    :email,
    :type,
    :company
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :email,
    :phone,
    :first_name,
    :last_name,
    :created_at,
    :updated_at,
    :type,
    :posts
  ].freeze

  FORM_ATTRIBUTES = [
    :email,
    :phone,
    :password,
    :first_name,
    :last_name,
    :ssn,
    :company
  ].freeze

  def display_resource(user)
    "#{user.email}"
  end

end

require "administrate/base_dashboard"

class AdminUserDashboard < Administrate::BaseDashboard
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
    company: Field::String.with_options(searchable: false)
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :posts,
    :email,
    :ssn
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :posts,
    :email,
    :ssn,
    :company,
    :phone,
    :first_name,
    :last_name,
    :created_at,
    :updated_at,
    :type
  ].freeze

  FORM_ATTRIBUTES = [
    :ssn,
    :email,
    :phone,
    :password,
    :first_name,
    :last_name,
    :company,
    :type
  ].freeze
end

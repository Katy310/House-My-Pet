require "administrate/base_dashboard"

class DogDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    gender: Field::String,
    breed: Field::String,
    size: Field::String,
    description: Field::Text,
    image_url: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    year: Field::Number,
    month: Field::Number,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :name,
    :gender,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :name,
    :gender,
    :breed,
    :size,
    :description,
    :image_url,
    :created_at,
    :updated_at,
    :year,
    :month,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :name,
    :gender,
    :breed,
    :size,
    :description,
    :image_url,
    :year,
    :month,
  ]

  # Overwrite this method to customize how dogs are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(dog)
  #   "Dog ##{dog.id}"
  # end
end

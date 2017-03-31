require "bootstrap_form_image_field/version"
require "bootstrap_form_image_field/image_field"
require "bootstrap_form/form_builder"

module BootstrapFormImageField
  include ImageField
end

module BootstrapForm
  class FormBuilder
    include BootstrapFormImageField
  end
end

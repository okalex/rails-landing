class Signup < ActiveRecord::Base

  # Validations
  validates :email,
    presence: {
      message: 'Please provide a valid email address.'
    },
    uniqueness: {
      message: 'We&apos;ve already got your email address. Thanks!'
    },
    format: {
      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
      message: 'Please provide a valid email address.'
    }

end

# Check Script
#
# USAGE:
#   rails runner check_script.rb

book = Book.new
p book.valid?
p book.errors.full_messages

# expected:
#   book.valid? #=> true
#   book.errors.full_messages #=> []
#
# This is because `Rails.application.config.active_record.belongs_to_required_by_default` is set to `false`
# in config/initializers/active_record_configure.rb
#
# And I expected this script with arproxy version 0.2.3, 0.2.4, 0.2.5.
# (I prepared every environment on branch `arproxy_0.2.3`, `arproxy_0.2.4` and `arproxy_0.2.5`.)
#
# In arproxy 0.2.5:
#
#   book.valid? #=> false
#   book.errors.full_messages #=> ["Author must exist"]
#
# In arproxy 0.2.4 or 0.2.3:
#
#   book.valid? #=> true
#   book.errors.full_messages #=> []

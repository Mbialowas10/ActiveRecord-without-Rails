# Load the required gems/libraries.
require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'sqlite3'
require 'logger'

# Load all of our ActiveRecord::Base objects.
require_relative 'models/category.rb' # categories table
require_relative 'models/customer.rb' # customers table
require_relative 'models/product.rb'  # products table
require_relative 'models/province.rb' # provinces table
require_relative 'models/ghost.rb'    # ghosts table

# Establish our connection to our serverless sqlite3 database.
ActiveRecord::Base.establish_connection :adapter => 'sqlite3', :database => 'db/development.sqlite3'

# For debugging purposes, comment out if you don't wish to see the SQL generated by ActiveRecord:
#ActiveRecord::Base.logger = Logger.new(STDOUT)

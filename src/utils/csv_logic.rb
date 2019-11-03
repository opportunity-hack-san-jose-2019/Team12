require 'csv'

=begin

ERB implementation:

<%= form_tag({:action => :import}, multipart: true) do %>
  <%= file_field_tag :file %>
  <%= submit_tag( "Import" ) %>
<% end %>

<%= form_tag({:action => :import}, multipart: true) do %>
  <%= file_field_tag :file %>
  <%= submit_tag( "Import" ) %>
<% end %>

=end

class CSVController < ApplicationController
	def index
	end

	def import
		rowarray = Array.new
		myfile = params[:file]

		CSV.foreach(myfile.path) do |row|
			rowarray << row
			@rowarraydisp = rowarray
		end
	end
end

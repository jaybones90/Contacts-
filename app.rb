require 'sinatra'
require 'sinatra/reloader'
require './lib/Contacts'
require 'pry'
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/add_contact') do
  erb(:contact_form)
end

post('/contact_details') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  company = params.fetch('company')
  job_title = params.fetch('job_title')
  attributes = {:first_name=> first_name, :last_name=> last_name, :company=> company, :job_title=> job_title}
  @new_contact = Contact.new(attributes)
  @new_contact.save()
  @all_contacts = Contact.all()
  erb(:contact_list)
end

get('/contact_details/:id') do
  contact = Contact.find(params.fetch('id').to_i())
  @new_contact = contact
  erb(:contact_info)
end

get('/contact_list') do
@all_contacts = Contact.all()
erb(:contact_list)



end

require_relative '../../lib/mail_list.rb'


Given(/^the list is (.*) to suscription$/) do |suscription_type|
   list = MailList.new( Object::const_get(suscription_type.capitalize + "ListType").new)
end

When(/^I suscribe to list$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I become member of the list$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I become a pending member$/) do
  pending # express the regexp above with the code you wish you had
end


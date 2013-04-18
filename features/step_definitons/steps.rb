require_relative '../../lib/mail_list.rb'
require 'rspec/expectations'

Given(/^the list is (.*) to suscription$/) do |suscription_type|
   @list = MailList.new( Object::const_get(suscription_type.capitalize + "ListType").new)
   @me = User.new
end

When(/^I suscribe to list$/) do
  @list.suscribe(@me)
end

Then(/^I become member of the list$/) do
  @list.approved_member?(@me).should be_true
end

Then(/^I become a pending member$/) do
  @list.pending_member?(@me).should be_true
end


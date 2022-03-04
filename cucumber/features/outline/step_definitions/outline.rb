When(/^I provide vip(\d+)@yopmail\.com$/) do |email|
  browser.text_field(:name, "Email").set("email@yopmail.com")
end

When ('I enter {email} and {password} and login') do |email,password|
  @facebook = Facebook.new()
  @facebook.login(email, password)
end
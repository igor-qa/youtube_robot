# 10.times / do
Then /^Open URL$/ do
  $driver.get "https://www.youtube.com/"
  $driver.manage.window.maximize
end

Then /^Sign in$/ do
  element = $driver.find_element :xpath => "//button[@class='yt-uix-button yt-uix-button-size-default yt-uix-button-primary']"
  element.click
  sleep 1
end

Then /^More options$/ do
  element = $driver.find_element :xpath => "//div[@class='IMH1vc lUHSR Hj2jlf']"
  element.click
  sleep 1
end

Then /^Create account$/ do
  element = $driver.find_element :xpath => "(//div[@class='jO7h3c'])[1]"
  $driver.action.move_to(element).perform
  element.click
  sleep 2
end

Then /^I would like a new Gmail address$/ do
  element = $driver.find_element :xpath => "//a[@id='signup-with-gmail-link']"
  element.click
  sleep 3
end

Then /^Name Last$/ do

  value = ""; 8.times{value  << (65 + rand(25)).chr}
  element = $driver.find_element :xpath => "//*[@id='FirstName']"
  element.send_keys value
  value = ""; 8.times{value  << (65 + rand(25)).chr}
  element = $driver.find_element :xpath => "//*[@id='LastName']"
  element.send_keys value
end

Then /^EMAIL$/ do
  value = ""; 16.times{value  << (65 + rand(25)).chr}
  element = $driver.find_element :xpath => "//*[@id='GmailAddress']"
  element.send_keys value
end

Then /^password$/ do
  value = "Shamaich77";
  element = $driver.find_element :xpath => "//*[@id='Passwd']"
  element.send_keys value
  element = $driver.find_element :xpath => "//*[@id='PasswdAgain']"
  element.send_keys value
end

Then /^Happy B1$/ do
  element = $driver.find_element :xpath => "//div[@title='Birthday']"
  $driver.action.move_to(element).perform
  element.click
  sleep 2
end

Then /^Happy B2$/ do
  element = $driver.find_element :xpath => "(//div[@class='goog-inline-block goog-flat-menu-button-dropdown'])[1]"
  #element.click
  sleep 2

  #element = $driver.find_element :xpath => ".//*[@id=':5']"
  #element = $driver.find_element :xpath => "(//div[@class='goog-inline-block goog-flat-menu-button jfk-select'])[0]"

  element = $driver.find_element :xpath => "//div[@id=':5']/div[text()='May']"
  sleep 1
  $driver.mouse.move_to element
  sleep 1
  $driver.submit
  #$driver.click
  #element.click
  #sleep 2
  #element = $driver.find_element :xpath => "//div[@class='goog-menu goog-menu-vertical']/div/div[text()='June']"
  #element = $driver.find_element :xpath => "//*[@id=':7']/div"
  #element = $driver.find_element :xpath => "//div[@class='goog-menuitem-content' and text()='July']"
  #$driver.action.move_to(element).perform
  #sleep 1
  #element.send_keys "j"

end

Then /^Happy B3$/ do
  value = "1";
  element = $driver.find_element :xpath => "//*[@id='BirthDay']"
  element.send_keys value
  value = "1990";
  element = $driver.find_element :xpath => "//*[@id='BirthYear']"
  element.send_keys value
end

Then /^Gender1$/ do
  element = $driver.find_element :xpath => "//*[@id='Gender']/div"
  $driver.action.move_to(element).perform
  element.click
  sleep 1
end

Then /^Gender2$/ do
  element = $driver.find_element :xpath => "//*[@id=':f']"
  $driver.action.move_to(element).perform
  element.click
  sleep 1
end

Then /^Submit$/ do
  element = $driver.find_element :xpath => "//*[@id='submitbutton']"
  element.click
  sleep 1
end

#Then /^scroll$/ do
#  element = driver.find_element(:css, "html body.scroll-disabled div#tos-div div.tos-center-div div#tos-popup-container.tos-popup-container div#tos-scroll-fab-container.tos-scroll-fab-container div#tos-scroll-button.tos-scroll-button")
#  #element = $driver.find_element :xpath => ""
#  $driver.action.move_to(element).perform
#  # element.send_keys :space
#  element.send_keys :click
#end
# end

Then /^Open amazon WebpaGe$/ do

end

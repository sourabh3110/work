auth 2.0
def occ(str)
  occ = {}
  str = str.split('')
  for i in str
    occ[i] = 0
  end
  for i in str
    occ[i] = occ[i]+1
  end
  occ
end

p occ("sourabhrathore")

def findText(text)
  tabs = driver.window('window.handles')
  for i in tabs
    driver.switch_to(i)
    if driver.find_element(xpath: "//*[contains(text,#{text})]").displayed?
  end
end

driver.manage.screensort('sourabh')

put vs post in api
testng and junit
auth 2.0 in api

from selenium import webdriver
from getpass import getpass

parametro_text = ''
parametros = open('parametros.txt','r')
for par in parametros:
    parametro_text = par

parametros.close()
    
parametro_text = parametro_text.split(',,')

username = parametro_text[0]
password = parametro_text[1]
userid = parametro_text[2]
passwordid = parametro_text[3]
button = parametro_text[4]
link = parametro_text[5]

driver = webdriver.Chrome("chromedriver.exe")
driver.get(link)

username_textbox = driver.find_element_by_id(userid)
username_textbox.send_keys(username)

password_textbox = driver.find_element_by_id(passwordid)
password_textbox.send_keys(password)

try:
    login_button = driver.find_element_by_id(button)
except:
    login_button = driver.find_element_by_name(button)
        
login_button.submit()
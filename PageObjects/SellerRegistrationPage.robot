*** Settings ***
Documentation       This page contains the keywords of seller registration page
Library             SeleniumLibrary
Library             BuiltIn
Library             Collections
Library             String

*** Variables ***
${full_name}                                  id:firstName
${email}                                      id:email
${password}                                   id:password
${confirm_password}                           xpath://input[@placeholder='Confirm Password']
${terms_check_box}                            css:.checkmark-check
${register_button}                            css:.mt-3 button
${full_name_error_message}                    xpath:(//p[contains(@class,'error_message mb-0')])[1]
${email_error_message}                        xpath://p[text()=' Provide a valid Email id ']
<<<<<<< HEAD
${password_error_message}                     xpath://p[contains(text(),'Provide a valid Password')]
${confirm_password_error_message}             xpath://p[contains(text(),'Password not matching')]
=======
${password_error_message}                     xpath:(//p[contains(@class,'error_message mb-0')])[3]
${confirm_password_error_message}             xpath:(//p[contains(@class,'error_message mb-0')])[4]
>>>>>>> 63939b104e06d310261ff910ce4ce456282175b6
${terms_check_box_error}                      xpath:(//p[contains(@class,'error_message mb-0')])[5]
${temp_mail_url}                              https://tempmailo.com/
${copy_button}                                css:.iconx

*** Keywords ***
Goto to seller registration
    go to       https://seller-dev.ofofo.io/registration

Register by entering all the values
#   Functional Testing of Full name text box
#   to check that Full name text box should not accept numbers
    wait until element is visible       ${full_name}            timeout=10
    input text  ${full_name}        123
    element should be visible       ${full_name_error_message}

#   To check that Full name text box should not accept special characters
    input text      ${full_name}            %&^%&^&%^&%^
    element should be visible           ${full_name_error_message}

#    To check that Full name text box should accept alphabets
    input text      ${full_name}            Srisha B Joshi
    element should not be visible           ${full_name_error_message}

#    To check that Full name text box should not accept alphanumeric values
    input text      ${full_name}            Srisha B 8553
    element should be visible               ${full_name_error_message}

#   Going forward for entering values
<<<<<<< HEAD
    clear element text      ${full_name}
=======
>>>>>>> 63939b104e06d310261ff910ce4ce456282175b6
    input text      ${full_name}            Srisha B Joshi

#    Functional test cases for Email Text box
#    To check that email text box should accept values in mail pattern
    input text      ${email}                Srisha@joshi.com
    element should not be visible           ${email_error_message}
    input text      ${email}                srisha.joshi@gmail.co.in
    element should not be visible               ${email_error_message}

#    To check that email text box should not accept values in non-email pattern
    input text      ${email}                Srisha Joshi
    element should be visible               ${email_error_message}
    input text      ${email}                3132132132131
    element should be visible               ${email_error_message}
    input text      ${email}                ^%%&*^&)*((
    element should be visible               ${email_error_message}
    input text      ${email}                Srisha@joshi@b.com
    element should be visible               ${email_error_message}
    input text      ${email}                Srisha.joshi@gmail.com.com.com
    element should be visible               ${email_error_message}

#   Going forward for entering values
<<<<<<< HEAD
    clear element text          ${email}
    execute javascript          window.open('${temp_mail_url}')
    sleep       5
    switch window               NEW
    wait until element is visible       ${copy_button}          timeout=10
    click element                       ${copy_button}
    switch window                       MAIN
    press keys                          ${email}                 CTRL+v

#   functional testing for Password Text box
#   To check that password text box should not accept only upper case letter
    input text              ${password}                     SRIHSAJOSHI
    element should be visible           ${password_error_message}           srisha
=======
    execute javascript          window.open('${temp_mail_url}')
    sleep       5
    wait until element is visible       ${copy_button}          timeout=10
    click element                       ${copy_button}
    switch window                       MAIN
    
>>>>>>> 63939b104e06d310261ff910ce4ce456282175b6

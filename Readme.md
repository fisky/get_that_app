# Project 6
### Ruby on Rails Project

###Instructions
- To run the application run 
- bundle install --without production
- "rake db:clear" or /db/development.sqlite3
- "rake db:migrate"
- "rake db:seed" or "rake db:setup"
- "rails server"


###How GetThat  works
- Users can choose their 4 week work out plan from plan_a(easy) plan_b(midieum) and plan_c(hard) and a start date
- Amdin can edit the exercise database and edit the work out plan
- If the user has a valid workout plan and a start date, a calendar will in the index so they can click in to the guide page

###Integration Test
* Amdin account: email => "admin@admin.com", password => "ohioadmin"
  * In this account, you can edit the database so you can present the user different exercises



* User without a plan: email => "ChooseNoPlan@test.com", password => "11111111"
  * In this account, the user has to choose a plan 



* User with a expired plan: email => "ChooseExpiredPlan@test.com", password => "11111111",:admin=>false, 
  * In this account, the user has a expired plan, so he/she also need to choose a plan

* User choose plan_a right now:  email => "ChoosePlanAToday@test.com", password => "11111111"
  * In this account, the user has just choose plan A start today, so, the user will see his week1's work out plan

* User choose plan_b right now:  email => "ChoosePlanBToday@test.com", password => "11111111"
  * In this account, the user has just choose plan B start today, so, the user will see his week1's work out plan 

* User choose plan_c right now:  email => "ChoosePlanCToday@test.com", password => "11111111"
  * In this account, the user has just choose plan C start today, so, the user will see his week1's work out plan


* User choose plan_a last week: email => "ChoosePlanAandAtWeek2@test.com", password => "11111111",
  * In this account, the user has chose a plan_a 1 week ago, so, after log in, the user will see he is at week 2's plan 

* User choose plan a start in next month: email => "ChooseFurturePlan@test.com", password => "11111111"
  * In this account, the user will know he has no workout this week, but he can check his future workout

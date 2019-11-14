User.destroy_all
Job.destroy_all
Task.destroy_all
UserJob.destroy_all

#starting 'job' - doneee

#unemployed
unemployed =             Job.create(name: "Unemployed", happiness_increment: 0, money: 0)
#medical jobs - sara
med_school =             Job.create(name: 'Medical Student', happiness_increment: -3, money: -10000, description: "You are currently studying medicine. Would you rather become a doctor or nurse?")

doctor =                 Job.create(name: 'Doctor', happiness_increment: 4, money: 0, description: "Congrats on your first few years as a doctor! You've managed to finally pay off your debt..")
nurse =                  Job.create(name: 'Nurse', happiness_increment: 6, money: 50000, description: "Congrat! You are a Nurse in the ER!")
# x_ray_tech =             Job.create(name: 'X-Ray technitian', happiness_increment: 5, money: 60000, description: "Congrats on your new job as a X-ray Tech!")

heart_surgeon =          Job.create(name: 'Heart Surgeon', happiness_increment: 4, money: 200000, description: "Fantastic! You managed to save your patient's life.")
negative_brain_surgeon = Job.create(name: 'Disgraced Brain Surgeon', happiness_increment: -6, money: -200000, description: "Oops.. Your first brain surgery didn't go so well! You're being sued by your patient's family..")
researcher =             Job.create(name: 'Cancer Researcher', happiness_increment: 2, money: 100000, description: "You discovered something interesting! Looks like you can mutate a virus to attack cancer cells..")
surgery_professor =      Job.create(name: 'Surgery Instructor', happiness_increment: 4, money: 200000, description: "Great! Your students are now saving lives.")
positive_brain_surgeon = Job.create(name: 'Brain Surgeon', happiness_increment: 8, money: 200000, description: "Cool! You can now do brain surgery!")
cancer_curer =           Job.create(name: 'Nobel Prize Winner', happiness_increment: 8, money: 500000, description: "It worked! You won a nobel prize for curing cancer.")
head_researcher =        Job.create(name: 'Head Researcher', happiness_increment: -4, money: 50000, description: "Yay... More research..")
zombie =                 Job.create(name: 'Zombie', happiness_increment: -200, money: -50000000, description: "Oh no! You created zombies and destroyed the world!")
vacation =               Job.create(name: 'On Vacation', happiness_increment: 9, money: -20000, description: "You are having a wonderful time travelling all around the world.")
#nurse jobs
australian_nurse =       Job.create(name: 'Nurse in Australia', happiness_increment: 3, money: 200000, description: "Welcome to the land down under!")
rn =                     Job.create(name: 'Registered Nurse', happiness_increment: 1, money: 0, description: "Congratulations! You are now a Registered Nurse.")
head_nurse =             Job.create(name: 'Head Nurse', happiness_increment: 3, money: 20000, description: "You've been promoted to head nurse!")
failed_nurse =           Job.create(name: 'Failed Nurse', happiness_increment: -500, money: 0, description: "Oh no.. The procedure didn't work.")
free_med_school =        Job.create(name: 'Scholarship Med Student', happiness_increment: 7, money: 0, description: "Wow! It worked. Your hospital wants to send you to med school to become a doctor!")
snake =                  Job.create(name: 'Bit by snake', happiness_increment: -50, money: 0, description: "Maybe that wasn't the best idea in Australia.. You've been bit by a snake!")



#political jobs - sara
intern  =                   Job.create(name: "Intern", happiness_increment: 0, money: 5000, description: "You are a lowly intern for your local congressman. Now go grab some more coffee.")
city_council  =             Job.create(name: "City Councilman", happiness_increment: 2, money: 50000, description: "You won your election!")
lost_city_election  =       Job.create(name: "Lost Election", happiness_increment:-2, money: -5000, description: "Oh no.. You lost your election!")
assistant  =                Job.create(name: "Assistant to Senator", happiness_increment: 0, money: 20000, description: "Your candidate won the election! They have promoted you to their Personal Assistant.")
head_of_epa  =              Job.create(name: "Head of EPA", happiness_increment: 2, money: 100000, description: "The bill you convinced the senator to support helped them win the Precidency! She has made you Head of the EPA.")
russia  =                   Job.create(name: "Russian Agent", happiness_increment: -50, money: 0, description: "Fantastic.. The Senator is a Russian agent and you've gone down with them!")
lost_congress_election =    Job.create(name: "Lost Election", happiness_increment: -4, money: -10000, description: "Oh no.. You lost your election!")
lost_president_election =   Job.create(name: "Lost Election", happiness_increment: -4, money: -50000, description: "Oh no.. You lost your election!") 
congressman =               Job.create(name: "Representative", happiness_increment: 4, money: 200000, description: "You won the election. You are now in the House of Representatives!")
president =                 Job.create(name: "President", happiness_increment: 8, money: 1000000, description: "You are now President of the United States of America!") 
travel =                    Job.create(name: "Traveling", happiness_increment: -50, money: -20000, description: "Your plane crashed..")
#construction jobs - sebastian

#religious jobs - sebastian


#unemployed tasks - done
unemployed.tasks << Task.create(description:"I want to go to school for medicine", outcome_job_id: med_school.id)
unemployed.tasks << Task.create(description:"I want to go to work in construction")

unemployed.tasks << Task.create(description:"I want to intern for my local congressman", outcome_job_id: intern.id)
unemployed.tasks << Task.create(description:"I want to go to seminary to become a priest")



#Medical tasks - sara
# -----------------------------------------------------------------------------------------------------
#After med school...
med_school.tasks << Task.create(description:"I would like to start working as a doctor", outcome_job_id: doctor.id)
med_school.tasks << Task.create(description:"I would like to start working as a nurse", outcome_job_id: nurse.id)
# med_school.tasks << Task.create(description:"I would like to become an X-ray technitian",outcome_job_id: x_ray_tech.id)
med_school.tasks << Task.create(description:"Quit my job", outcome_job_id:unemployed.id)

#doctor's tasks....
doctor.tasks << Task.create(description:"Perform heart surgery", outcome_job_id:heart_surgeon.id)
doctor.tasks << Task.create(description:"Perform brain surgery", outcome_job_id:[positive_brain_surgeon.id, negative_brain_surgeon.id].sample)
doctor.tasks << Task.create(description:"Start research to cure cancer", outcome_job_id:researcher.id)

#heart surgery tasks..
heart_surgeon.tasks << Task.create(description:"Start teaching other doctors to perform surgery", outcome_job_id: surgery_professor.id)
heart_surgeon.tasks << Task.create(description:"Start learning brain surgery", outcome_job_id:[positive_brain_surgeon.id, negative_brain_surgeon.id].sample)
heart_surgeon.tasks << Task.create(description:"Start doing research", outcome_job_id:researcher.id)

#brain surgery tasks...
positive_brain_surgeon.tasks << Task.create(description: "Starting teaching other doctors to perform surgery", outcome_job_id: surgery_professor.id)
positive_brain_surgeon.tasks << Task.create(description: "Go on vacation.", outcome_job_id: vacation.id)

#researcher tasks...
researcher.tasks << Task.create(description:"Mutate the virus", outcome_job_id: [cancer_curer.id,zombie.id].sample)
researcher.tasks << Task.create(description:"Do additional research", outcome_job_id: head_researcher.id)
researcher.tasks << Task.create(description:"Realize research isn't for you. Perform heart surgery instead.", outcome_job_id: heart_surgeon.id)

#Nobel prize winner...
cancer_curer.tasks << Task.create(description:"Take a well deserved vacation", outcome_job_id: vacation.id)
cancer_curer.tasks << Task.create(description:"Try your hand at heart surgery", outcome_job_id: heart_surgeon.id)


#Head researcher
head_researcher.tasks << Task.create(description:"After further research, looks like that mutated virus might work.. Try it", outcome_job_id: [cancer_curer.id,cancer_curer.id,zombie.id].sample)
head_researcher.tasks << Task.create(description: "Realize you want to do something else with your life and quit your job.", outcome_job_id: unemployed.id)

#vacationing doctor
vacation.tasks << Task.create(description:"You are sick of being a doctor. Start a new career. ", outcome_job_id:unemployed.id)
vacation.tasks << Task.create(description:"Go back to saving lives. ", outcome_job_id:doctor.id)
vacation.tasks << Task.create(description:"Keep travelling.", outcome_job_id:vacation.id)

#surgery professor
surgery_professor.tasks << Task.create(description:"Start doing cancer research.", outcome_job_id: researcher.id)
surgery_professor.tasks << Task.create(description:"Go on vacation.", outcome_job_id: vacation.id)
surgery_professor.tasks << Task.create(description:"Change career.", outcome_job_id: unemployed.id)

# -----------------------------------------------------------------------------------------------------
#nurse tasks
nurse.tasks << Task.create(description:"Move to Austalia.", outcome_job_id: australian_nurse.id)
nurse.tasks << Task.create(description:"Work extra hours towards a promotion.", outcome_job_id: head_nurse.id)
nurse.tasks << Task.create(description:"Go back to school to become a Registered Nurse.", outcome_job_id: rn.id)

#RN tasks
# rn.tasks << Task.create(description:"Move to Australia where you can make more money.", outcome_job_id: australian_nurse.id)
rn.tasks << Task.create(description:"Realize you'd rather be a doctor. Go back to med school.", outcome_job_id: doctor.id)
rn.tasks << Task.create(description:"Try a risky procedure to save a life.", outcome_job_id: [head_nurse.id, failed_nurse.id].sample)
rn.tasks << Task.create(description:"Work extra hours towards a promotion.", outcome_job_id: head_nurse.id)

#head nurse tasks
# head_nurse.tasks << Task.create(description:"Move to third-world country.", outcome_job_id: australian_nurse.id)
head_nurse.tasks << Task.create(description:"Try a risky procedure to save a life.", outcome_job_id: free_med_school.id)
head_nurse.tasks << Task.create(description:"Change your career.", outcome_job_id: unemployed.id)

#free med school tasks
free_med_school.tasks << Task.create(description:"Accept the offer.", outcome_job_id: doctor.id)
free_med_school.tasks << Task.create(description:"You feel done with nursing. Change your career.", outcome_job_id: unemployed.id)

#Australian nurse tasks
#Come back to this
australian_nurse.tasks << Task.create(description:"Implement new way to scheduel nurses", outcome_job_id: head_nurse.id)
australian_nurse.tasks << Task.create(description:"Decide you'd rather work with animals.", outcome_job_id: snake.id)

# -----------------------------------------------------------------------------------------------------
#political tasks - sara

#Intern's tasks...

intern.tasks << Task.create(description:"Support your congressman as she runs for Senate", outcome_job_id: assistant.id)
intern.tasks << Task.create(description: "Run for City Council", outcome_job_id: [lost_city_election.id,city_council.id].sample)


#council tasks
city_council.tasks << Task.create(description:"Run for Congress.", outcome_job_id:[lost_congress_election.id,congressman.id].sample)
city_council.tasks << Task.create(description:"Become close with a Senator", outcome_job_id:russia.id)
city_council.tasks << Task.create(description:"Politics isn't for you. Restart your career.", outcome_job_id: unemployed.id)

#assistant tasks
assistant.tasks << Task.create(description:"Convince your Senator to support Climate Change bill", outcome_job_id:head_of_epa.id)
assistant.tasks << Task.create(description:"Run for Congress", outcome_job_id:[lost_congress_election.id,congressman.id].sample)
assistant.tasks << Task.create(description:"Become close with another Senator", outcome_job_id: russia.id)


#lost election tasks
lost_city_election.tasks << Task.create(description:"Go back to your internship", outcome_job_id:intern.id)
lost_city_election.tasks << Task.create(description: "Run again", outcome_job_id: [lost_city_election.id,city_council.id].sample)
lost_city_election.tasks << Task.create(description:"Try something new", outcome_job_id:unemployed.id)

#head of epa
head_of_epa.tasks << Task.create(description:"Run for congress", outcome_job_id:[lost_congress_election.id,congressman.id].sample)
head_of_epa.tasks << Task.create(description:"Run for President", outcome_job_id:[lost_president_election.id,president.id].sample)
head_of_epa.tasks << Task.create(description:"Try something new", outcome_job_id:unemployed.id)

#lost congress tasks
lost_congress_election.tasks << Task.create(description:"Support a friend as they run for Senate", outcome_job_id:assistant.id)
lost_congress_election.tasks << Task.create(description: "Run again", outcome_job_id: [lost_congress_election.id,congressman.id].sample)
lost_congress_election.tasks << Task.create(description:"Try something new", outcome_job_id:unemployed.id)

#lost president
lost_president_election.tasks << Task.create(description:"Go travel the world.", outcome_job_id:travel.id)
lost_president_election.tasks << Task.create(description: "Run again.", outcome_job_id: [lost_president_election.id,president.id].sample)
lost_president_election.tasks << Task.create(description:"Try something new", outcome_job_id:unemployed.id)

#won congress
congressman.tasks << Task.create(description:"Run for President", outcome_job_id: [lost_president_election.id,president.id].sample)
congressman.tasks << Task.create(description:"Quit politics", outcome_job_id: unemployed.id)
congressman.tasks << Task.create(description:"Support Senator's climate bill", outcome_job_id: head_of_epa.id)
#won president
president.tasks << Task.create(description:"Go travel the world.", outcome_job_id: travel.id)

#construction tasks - sebastian


#religious tasks  - sebastian


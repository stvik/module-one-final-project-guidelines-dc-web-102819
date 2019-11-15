User.destroy_all
Job.destroy_all
Task.destroy_all
UserJob.destroy_all

#unemployed

unemployed                      = Job.create(name: "Unemployed", happiness_increment: 0, money: 0)

#medical jobs - sara

med_school                      = Job.create(name: 'Medical Student', happiness_increment: -3, money: -10000, description: "You are currently studying medicine. Would you rather become a doctor or nurse?")
doctor                          = Job.create(name: 'Doctor', happiness_increment: 4, money: 0, description: "Congrats on your first few years as a doctor! You've managed to finally pay off your debt..")
nurse                           = Job.create(name: 'Nurse', happiness_increment: 6, money: 50000, description: "Congrats! You are a Nurse in the ER!")
heart_surgeon                   = Job.create(name: 'Heart Surgeon', happiness_increment: 4, money: 200000, description: "Fantastic! You managed to save your patient's life.")
negative_brain_surgeon          = Job.create(name: 'Disgraced Brain Surgeon', happiness_increment: -6, money: -200000, description: "Oops.. Your first brain surgery didn't go so well! You're being sued by your patient's family..")
researcher                      = Job.create(name: 'Cancer Researcher', happiness_increment: 2, money: 100000, description: "You discovered something interesting! Looks like you can mutate a virus to attack cancer cells..")
surgery_professor               = Job.create(name: 'Surgery Instructor', happiness_increment: 4, money: 200000, description: "Great! Your students are now saving lives.")
positive_brain_surgeon          = Job.create(name: 'Brain Surgeon', happiness_increment: 8, money: 200000, description: "Cool! You can now do brain surgery!")
cancer_curer                    = Job.create(name: 'Nobel Prize Winner', happiness_increment: 8, money: 500000, description: "It worked! You won a nobel prize for curing cancer.")
head_researcher                 = Job.create(name: 'Zombie', happiness_increment: -200, money: -50000000, description: "Oh no! You created zombies and destroyed the world!")
vacation                        = Job.create(name: 'On Vacation', happiness_increment: 9, money: -20000, description: "You are having a wonderful time travelling all around the world.")
zombie                          = Job.create(name: 'Zombie', happiness_increment: -200, money: -50000000, description: "Oh no! You created zombies and destroyed the world!")

#nurse jobs - sara

australian_nurse                = Job.create(name: 'Nurse in Australia', happiness_increment: 3, money: 200000, description: "Welcome to the land down under!")
rn                              = Job.create(name: 'Registered Nurse', happiness_increment: 1, money: 0, description: "Congratulations! You are now a Registered Nurse.")
head_nurse                      = Job.create(name: 'Head Nurse', happiness_increment: 3, money: 20000, description: "You've been promoted to head nurse!")
failed_nurse                    = Job.create(name: 'Failed Nurse', happiness_increment: -500, money: 0, description: "Oh no.. The procedure didn't work.")
free_med_school                 = Job.create(name: 'Scholarship Med Student', happiness_increment: 7, money: 0, description: "Wow! It worked. Your hospital wants to send you to med school to become a doctor!")
snake                           = Job.create(name: 'Bit by snake', happiness_increment: -50, money: 0, description: "Maybe that wasn't the best idea in Australia.. You've been bit by a snake!")

#political jobs - sara

intern                          = Job.create(name: "Intern", happiness_increment: 0, money: 5000, description: "You are a lowly intern for your local congressman. Now go grab some more coffee.")
city_council                    = Job.create(name: "City Councilman", happiness_increment: 2, money: 50000, description: "You won your election!")
lost_city_election              = Job.create(name: "Lost Election", happiness_increment:-2, money: -5000, description: "Oh no.. You lost your election!")
assistant                       = Job.create(name: "Assistant to Senator", happiness_increment: 0, money: 20000, description: "Your candidate won the election! They have promoted you to their Personal Assistant.")
head_of_epa                     = Job.create(name: "Head of EPA", happiness_increment: 2, money: 100000, description: "The bill you convinced the senator to support helped them win the Precidency! She has made you Head of the EPA.")
russia                          = Job.create(name: "Russian Agent", happiness_increment: -50, money: 0, description: "Fantastic.. The Senator is a Russian agent and you've gone down with them!")
lost_congress_election          = Job.create(name: "Lost Election", happiness_increment: -4, money: -10000, description: "Oh no.. You lost your election!")
lost_president_election         = Job.create(name: "Lost Election", happiness_increment: -4, money: -50000, description: "Oh no.. You lost your election!") 
congressman                     = Job.create(name: "Representative", happiness_increment: 4, money: 200000, description: "You won the election. You are now in the House of Representatives!")
president                       = Job.create(name: "President", happiness_increment: 8, money: 1000000, description: "You are now President of the United States of America!") 
travel                          = Job.create(name: "Traveling", happiness_increment: -50, money: -20000, description: "Your plane crashed..")

#construction jobs - sebastian

construction_start              = Job.create(name:"Construction debris cleaner", description:"Welcome to the jungle!", happiness_increment: 0, money: 5000)
construction_helper             = Job.create(name:"Concrete mixer", description:"How to get screamed at 101" ,happiness_increment:1, money:7000)
carpenter_apprentice            = Job.create(name:"Carpenter apprentice",description:"Any jackass can kick down a barn, but it takes a good carpenter to build one.",happiness_increment:2, money:9000)
cleaning_for_electrician        = Job.create(name:"Electrical technician helper", description:"I'm I doing the right thing?", happiness_increment: -1, money: 5000)
construction_foreman            = Job.create(name:"Construction Foreman", description:"Congratulations! you can now scream at a helper", happiness_increment:2, money:10000)
construction_manager            = Job.create(name:"Construction Manager", description:"You now manage the construcction site, dont forget were you came from.", happiness_increment:2, money:15000)
senior_carpenter                = Job.create(name:"Senior carpenter", description:"You are now the master of the pine", happiness_increment: 5, money:20000)
master_carpenter                = Job.create(name:"master carpenter", description:"You are now the Master of Wood", happiness_increment: 8, money: 80000)
live_in_the_nature              = Job.create(name:"Wild Man", description:"You will survive in one of the most beautiful forest in the world", happiness_increment: 8, money: -8000)
succsefull_buisness             = Job.create(name:"Entrepenour", description:"Live The American Dream", happiness_increment: 8, money: 700000)
bad_buisness                    = Job.create(name:"Bad Entrepenour", description:"Your buisness failed...Go back to work!", happiness_increment: -6, money: -15000)
master_electrician              = Job.create(name:"Master Electrician", description:"Congratulations you can now create your own buisness or be the boss", happiness_increment:3, money: 30000)
elevator_repairman              = Job.create(name:"Elevator Repairman", description: "Well now your gonna make more money", happiness_increment: 0, money:50000)
tribe                           = Job.create(name:"Tribe", description:"your are now the leader of the Wolf Clan!", happiness_increment: 7, money: -5000)
eaten_by_bear                   = Job.create(name:"Bear", description:"You got eaten by a bear!", happiness_increment:-30, money: - 10000000)
fall_down_mountain              = Job.create(name:"mountain", description:"Oh no, you fell down a mountain and died!", happiness_increment:-30, money: - 10000000)
sickness                        = Job.create(name:"Sickness", description:"You got a fever and died, the nearest hospital was too far away.", happiness_increment:-30, money: - 1000000)
betrayal                        = Job.create(name:"Betrayed", description:"You got betrayed by your tribe!", happiness_increment:-30, money: - 1000000)
get_cancer                      = Job.create(name:"Cancer", description:"You got cancer...maybe you shouldve'd been a doctor to maybe find a cure", happiness_increment: -9, money: -80000)
architect                       = Job.create(name:"Architect", description:"“As an architect you design for the present, with an awareness of the past, for a future which is essentially unknown.” – Norman Foster", happiness_increment: 6, money:80000)
buisnnes_expansion              = Job.create(name:"Buisness Master", description:"You are a now one of the richest human beings alive.", happiness_increment:-2, money: 2000000)
get_robbed                      = Job.create(name:"robbed", description:"Having a lot of money has a lot of risks and you just got robbed",happiness_increment: -7, money: -10000000)
donate_money                    = Job.create(name:"Donation", description:"Thanks for making the world a better place, enjoy your happiness", happiness_increment: 30, money: -1000000000)
hermit                          = Job.create(name:"Hermit", description:"Keep enjoying the nature!", happiness_increment: 10, money: -2000)
investor                        = Job.create(name:"Investor", description:"Invest wisely", happiness_increment:8, money:0)
good_tribe                      = Job.create(name:"Tribe Leader", description:"You are now bigger than the aztecs", happiness_increment: 8, money:0)
all_dead                        = Job.create(name:"Tribe dies", description:"Your bows and arrows won't conquer a country...obviously", happiness_increment:-30, money: -10000000)

#construction start tasks - sebastian

construction_start.tasks        << Task.create(description:"Have a great construction start as a construction helper", outcome_job_id: construction_helper.id )
construction_start.tasks        << Task.create(description:"Fresh start as a carpenter aprentice",outcome_job_id: carpenter_apprentice.id )                                                         
construction_start.tasks        << Task.create(description:"Clean the trash for the electrical technictian",outcome_job_id: cleaning_for_electrician.id)

#construction helper tasks.

construction_helper.tasks       << Task.create(description:"Go to construction 101 course", outcome_job_id:construction_manager.id)
construction_helper.tasks       << Task.create(description:"Keep grinding", outcome_job_id: construction_foreman.id)
construction_helper.tasks       << Task.create(description:"Quit job", outcome_job_id: unemployed.id)

#construction foreman tasks.

construction_foreman.tasks      << Task.create(description:"Go to construction 101 course", outcome_job_id: construction_manager.id)
construction_foreman.tasks      << Task.create(description:"Keep Grinding", outcome_job_id:construction_manager.id)
construction_foreman.tasks      << Task.create(description:"Quit job", outcome_job_id: unemployed.id)

#carpenter apprentice tasks.

carpenter_apprentice.tasks      << Task.create(description:"Join a weekend carpenter club", outcome_job_id: senior_carpenter.id)
carpenter_apprentice.tasks      << Task.create(description:"Help your family start a wood company", outcome_job_id:[bad_buisness.id, succsefull_buisness.id].sample)
carpenter_apprentice.tasks      << Task.create(description:"Quit job", outcome_job_id: [unemployed.id, live_in_the_nature.id].sample)

#cleaning for electrician tasks.

cleaning_for_electrician.tasks  << Task.create(description:"Go to electrical course", outcome_job_id: master_electrician.id)
cleaning_for_electrician.tasks  << Task.create(description:"Get raised to an electrical apprentice", outcome_job_id:elevator_repairman.id)
cleaning_for_electrician.tasks  << Task.create(description:"Quit job", outcome_job_id: unemployed.id)

#senior carpenter tasks.

senior_carpenter.tasks          << Task.create(description:"Go live in the nature", outcome_job_id: live_in_the_nature.id)
senior_carpenter.tasks          << Task.create(description:"Go back to school to study architecture", outcome_job_id: architect.id)
senior_carpenter.tasks          << Task.create(description:"Get a raise", outcome_job_id: master_carpenter.id)

#live in the nature tasks.

live_in_the_nature.tasks        << Task.create(description:"Start a tribe", outcome_job_id: tribe.id)
live_in_the_nature.tasks        << Task.create(description:"Become a hermit", outcome_job_id: [hermit.id, eaten_by_bear.id].sample)
live_in_the_nature.tasks        << Task.create(description:"Go back to society", outcome_job_id: unemployed.id)

#bad buisness tasks

bad_buisness.tasks              << Task.create(description:"Go live in the nature", outcome_job_id: live_in_the_nature.id)
bad_buisness.tasks              << Task.create(description:"Switch career", outcome_job_id: unemployed.id)

#succsesfull buisness tasks.

succsefull_buisness.tasks       << Task.create(description:"Become an investor", outcome_job_id:investor.id)
succsefull_buisness.tasks       << Task.create(description:"Go back to school to study architecture", outcome_job_id: architect.id)
succsefull_buisness.tasks       << Task.create(description:"Expand the business", outcome_job_id:[buisnnes_expansion.id, bad_buisness.id].sample)

#master electrician tasks.

master_electrician.tasks        << Task.create(description:"Create your own business", outcome_job_id:[bad_buisness.id, succsefull_buisness.id].sample)
master_electrician.tasks        << Task.create(description:"Continue as a master electrician", outcome_job_id: master_electrician.id)
master_electrician.tasks        << Task.create(description:"Career switch", outcome_job_id: unemployed.id)

#elevator repairman tasks.

elevator_repairman.tasks        << Task.create(description:"Create your own buisness", outcome_job_id:[bad_buisness.id, succsefull_buisness.id].sample)
elevator_repairman.tasks        << Task.create(description:"Continue with your current job", outcome_job_id: elevator_repairman.id)
elevator_repairman.tasks        << Task.create(description:"Quit job", outcome_job_id:unemployed.id)

#tribe tasks.

tribe.tasks                     << Task.create(description:"Expand tribe", outcome_job_id:[betrayal.id, sickness.id, good_tribe.id].sample)
tribe.tasks                     << Task.create(description:"Abandon tribe", outcome_job_id:[fall_down_mountain.id, unemployed.id].sample)

#investor tasks.

investor.tasks                  << Task.create(description:"Invest in real estate", outcome_job_id:[get_cancer.id, succsefull_buisness.id].sample)
investor.tasks                  << Task.create(description:"Donate your money and become a hermit", outcome_job_id:live_in_the_nature.id)
investor.tasks                  << Task.create(description:"Invest in the stock market", outcome_job_id: [bad_buisness.id, succsefull_buisness.id].sample)

#architect tasks.

architect.tasks                 << Task.create(description:"Continue as an architect", outcome_job_id:architect.id)
architect.tasks                 << Task.create(description:"Create your own business", outcome_job_id:[bad_buisness.id, succsefull_buisness.id].sample)
architect.tasks                 << Task.create(description:"Become a hermit", outcome_job_id:live_in_the_nature.id)

#buisness expansion tasks.

buisnnes_expansion.tasks        << Task.create(description:"Become a doctor", outcome_job_id: med_school.id)
buisnnes_expansion.tasks        << Task.create(description:"Keep business growing", outcome_job_id:[get_cancer.id, get_robbed.id])
buisnnes_expansion.tasks        << Task.create(description:"Donate your money to charity", outcome_job_id: unemployed.id)

#master carpenter tasks.

master_carpenter.tasks          << Task.create(description:"Go back to school to study architecture", outcome_job_id: architect.id)
master_carpenter.tasks          << Task.create(description:"Go live in the nature", outcome_job_id: live_in_the_nature.id)
master_carpenter.tasks          << Task.create(description:"change career", outcome_job_id: unemployed.id)

#hermit tasks.

hermit.tasks                    << Task.create(description:"Start a tribe", outcome_job_id: tribe.id)
hermit.tasks                    << Task.create(description:"Go back to society", outcome_job_id: unemployed.id)
hermit.tasks                    << Task.create(description:"Continue as a hermit", outcome_job_id: hermit.id)

#good tribe tasks.

good_tribe.tasks                << Task.create(description:"Invade another country", outcome_job_id:all_dead.id)
good_tribe.tasks                << Task.create(description:"Abandon Tribe", outcome_job_id:[fall_down_mountain.id, unemployed.id].sample)
good_tribe.tasks                << Task.create(description:"Live in the tribe as it is", outcome_job_id:good_tribe.id)

#construction manager tasks

construction_manager.tasks      << Task.create(description:"Go back to school to study architecture", outcome_job_id: architect.id)
construction_manager.tasks      << Task.create(description:"Go live in the nature", outcome_job_id: live_in_the_nature.id)
construction_manager.tasks      << Task.create(description:"Keep working", outcome_job_id:construction_manager.id)

#--------------------------------------------------------------------------------------------------------------------------------------

#Unemployment tasks

unemployed.tasks                << Task.create(description:"I want to go to school for medicine", outcome_job_id: med_school.id)
unemployed.tasks                << Task.create(description: "I want to go to work in construction", outcome_job_id: construction_start.id)
unemployed.tasks                << Task.create(description:"I want to intern for my local congressman", outcome_job_id: intern.id)

#Medical tasks - sara

#After med school tasks.

med_school.tasks                << Task.create(description:"I would like to start working as a doctor", outcome_job_id: doctor.id)
med_school.tasks                << Task.create(description:"I would like to start working as a nurse", outcome_job_id: nurse.id)
med_school.tasks                << Task.create(description:"Quit my job", outcome_job_id:unemployed.id)

#doctor's tasks.

doctor.tasks                    << Task.create(description:"Perform heart surgery", outcome_job_id:heart_surgeon.id)
doctor.tasks                    << Task.create(description:"Perform brain surgery", outcome_job_id:[positive_brain_surgeon.id, negative_brain_surgeon.id].sample)
doctor.tasks                    << Task.create(description:"Start research to cure cancer", outcome_job_id:researcher.id)

#heart surgery tasks.
            
heart_surgeon.tasks             << Task.create(description:"Start teaching other doctors to perform surgery", outcome_job_id: surgery_professor.id)
heart_surgeon.tasks             << Task.create(description:"Start learning brain surgery", outcome_job_id:[positive_brain_surgeon.id, negative_brain_surgeon.id].sample)
heart_surgeon.tasks             << Task.create(description:"Start doing research", outcome_job_id:researcher.id)

#brain surgery tasks.

positive_brain_surgeon.tasks    << Task.create(description: "Starting teaching other doctors to perform surgery", outcome_job_id: surgery_professor.id)
positive_brain_surgeon.tasks    << Task.create(description: "Go on vacation.", outcome_job_id: vacation.id)

#researcher tasks.

researcher.tasks                << Task.create(description:"Mutate the virus", outcome_job_id: [cancer_curer.id, zombie.id].sample)
researcher.tasks                << Task.create(description:"Do additional research", outcome_job_id: head_researcher.id)
researcher.tasks                << Task.create(description:"Realize research isn't for you. Perform heart surgery instead.", outcome_job_id: heart_surgeon.id)

#Nobel prize winner tasks.

cancer_curer.tasks              << Task.create(description:"Take a well deserved vacation", outcome_job_id: vacation.id)
cancer_curer.tasks              << Task.create(description:"Try your hand at heart surgery", outcome_job_id: heart_surgeon.id)

#Head researcher tasks.

head_researcher.tasks           << Task.create(description:"After further research, looks like that mutated virus might work.. Try it", outcome_job_id: [cancer_curer.id,cancer_curer.id,zombie.id].sample)
head_researcher.tasks           << Task.create(description: "Realize you want to do something else with your life and quit your job.", outcome_job_id: unemployed.id)
                 
#vacationing doctor tasks.

vacation.tasks                  << Task.create(description:"You are sick of being a doctor. Start a new career. ", outcome_job_id:unemployed.id)
vacation.tasks                  << Task.create(description:"Go back to saving lives. ", outcome_job_id:doctor.id)
vacation.tasks                  << Task.create(description:"Keep travelling.", outcome_job_id:vacation.id)

#surgery professor tasks.

surgery_professor.tasks         << Task.create(description:"Start doing cancer research.", outcome_job_id: researcher.id)
surgery_professor.tasks         << Task.create(description:"Go on vacation.", outcome_job_id: vacation.id)
surgery_professor.tasks         << Task.create(description:"Change career.", outcome_job_id: unemployed.id)

# -----------------------------------------------------------------------------------------------------

#nurse tasks.

nurse.tasks                     << Task.create(description:"Move to Austalia.", outcome_job_id: australian_nurse.id)
nurse.tasks                     << Task.create(description:"Work extra hours towards a promotion.", outcome_job_id: head_nurse.id)
nurse.tasks                     << Task.create(description:"Go back to school to become a Registered Nurse.", outcome_job_id: rn.id)

#RN tasks.
                     
rn.tasks                        << Task.create(description:"Realize you'd rather be a doctor. Go back to med school.", outcome_job_id: doctor.id)
rn.tasks                        << Task.create(description:"Try a risky procedure to save a life.", outcome_job_id: [head_nurse.id, failed_nurse.id].sample)
rn.tasks                        << Task.create(description:"Work extra hours towards a promotion.", outcome_job_id: head_nurse.id)

#head nurse tasks.

head_nurse.tasks                << Task.create(description:"Try a risky procedure to save a life.", outcome_job_id: free_med_school.id)
head_nurse.tasks                << Task.create(description:"Change your career.", outcome_job_id: unemployed.id)

#free med school tasks.

free_med_school.tasks           << Task.create(description:"Accept the offer.", outcome_job_id: doctor.id)
free_med_school.tasks           << Task.create(description:"You feel done with nursing. Change your career.", outcome_job_id: unemployed.id)

#Australian nurse tasks.

australian_nurse.tasks          << Task.create(description:"Implement new way to scheduel nurses", outcome_job_id: head_nurse.id)
australian_nurse.tasks          << Task.create(description:"Decide you'd rather work with animals.", outcome_job_id: snake.id)

# -----------------------------------------------------------------------------------------------------

#political tasks - sara

#Intern's tasks.

intern.tasks                    << Task.create(description:"Support your congressman as she runs for Senate", outcome_job_id: assistant.id)
intern.tasks                    << Task.create(description: "Run for City Council", outcome_job_id: [lost_city_election.id,city_council.id].sample)
             

#council tasks.

city_council.tasks              << Task.create(description:"Run for Congress.", outcome_job_id:[lost_congress_election.id,congressman.id].sample)
city_council.tasks              << Task.create(description:"Become close with a Senator", outcome_job_id:russia.id)
city_council.tasks              << Task.create(description:"Politics isn't for you. Restart your career.", outcome_job_id: unemployed.id)

#assistant tasks.                
        
assistant.tasks                 << Task.create(description:"Convince your Senator to support Climate Change bill", outcome_job_id:head_of_epa.id)
assistant.tasks                 << Task.create(description:"Run for Congress", outcome_job_id:[lost_congress_election.id,congressman.id].sample)
assistant.tasks                 << Task.create(description:"Become close with another Senator", outcome_job_id: russia.id)


#lost election tasks.

lost_city_election.tasks        << Task.create(description:"Go back to your internship", outcome_job_id:intern.id)
lost_city_election.tasks        << Task.create(description: "Run again", outcome_job_id: [lost_city_election.id,city_council.id].sample)
lost_city_election.tasks        << Task.create(description:"Try something new", outcome_job_id:unemployed.id)

#head of epa tasks.

head_of_epa.tasks               << Task.create(description:"Run for congress", outcome_job_id:[lost_congress_election.id,congressman.id].sample)
head_of_epa.tasks               << Task.create(description:"Run for President", outcome_job_id:[lost_president_election.id,president.id].sample)
head_of_epa.tasks               << Task.create(description:"Try something new", outcome_job_id:unemployed.id)

#lost congress tasks.

lost_congress_election.tasks    << Task.create(description:"Support a friend as they run for Senate", outcome_job_id:assistant.id)
lost_congress_election.tasks    << Task.create(description: "Run again", outcome_job_id: [lost_congress_election.id,congressman.id].sample)
lost_congress_election.tasks    << Task.create(description:"Try something new", outcome_job_id:unemployed.id)

#lost president tasks.

lost_president_election.tasks   << Task.create(description:"Go travel the world.", outcome_job_id:travel.id)
lost_president_election.tasks   << Task.create(description: "Run again.", outcome_job_id: [lost_president_election.id,president.id].sample)
lost_president_election.tasks   << Task.create(description:"Try something new", outcome_job_id:unemployed.id)

#won congress tasks.
              
congressman.tasks               << Task.create(description:"Run for President", outcome_job_id: [lost_president_election.id,president.id].sample)
congressman.tasks               << Task.create(description:"Quit politics", outcome_job_id: unemployed.id)
congressman.tasks               << Task.create(description:"Support Senator's climate bill", outcome_job_id: head_of_epa.id)
#won president tasks.

president.tasks << Task.create(description:"Go travel the world.", outcome_job_id: travel.id)

#---------------------------------------------------------------------------------------------------------------------------------------------------------

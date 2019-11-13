User.destroy_all
Job.destroy_all
Task.destroy_all
UserJob.destroy_all

#starting 'job' - doneee

#unemployed
unemployed = Job.create(name: "Unemployed", happiness_increment: 0, money: 0)
#medical jobs - sara
med_school = Job.create(name: 'Medical Student', happiness_increment: -3, money: -10000)

doctor = Job.create(name: 'doctor', happiness_increment: 6, money: 100000)
#political jobs - sara

#construction jobs - sebastian

#religious jobs - sebastian


#unemployed tasks - done
unemployed.tasks << Task.create(description:"I want to go to school for medicine", outcome_job_id: med_school.id)
unemployed.tasks << Task.create(description:"I want to go to work in construction")

unemployed.tasks << Task.create(description:"I want to intern for my local congressman")
unemployed.tasks << Task.create(description:"I want to go to seminary to become a priest")


#Medical tasks - sara


med_school.tasks << Task.create(description:"I am a doctor task!", outcome_job_id: doctor.id)
med_school.tasks << Task.create(description:"I am a fun task!")
med_school.tasks << Task.create(description:"I am a fun task!")
med_school.tasks << Task.create(description:"Quit my job", outcome_job_id:unemployed.id)
doctor.tasks << Task.create(description:"I am a fantastic task!", outcome_job_id: med_school.id)

#political tasks - sara


#construction tasks - sebastian


#religious tasks  - sebastian


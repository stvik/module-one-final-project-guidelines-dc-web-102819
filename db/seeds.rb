User.destroy_all
Job.destroy_all
Task.destroy_all
UserJob.destroy_all


seminary = Job.create(name: 'Seminary', happiness_increment: 8, level: 1, money: 0)
construction_helper = Job.create(name: 'Helper', happiness_increment: 5, level: 1, money: 3500 )




internship = Job.create(name: 'Internship', happiness_increment: 2, level: 1, money: 2500 )
med_school = Job.create(name: 'med_school', happiness_increment: 4, level: 1, money: 2000)
doctor = Job.create(name: 'doctor', happiness_increment: 6, level: 2, money: 100000)
med_school.tasks << Task.create(description:"I am a fun task!",happiness_increment: -2, money: 10000)
med_school.tasks << Task.create(description:"I am a doctor task!", outcome_job_id: doctor.id)
med_school.tasks << Task.create(description:"I am a fun task!")
med_school.tasks << Task.create(description:"I am a fun task!")
construction_helper.tasks << Task.create(description:"I am a terrible task!")
construction_helper.tasks << Task.create(description:"I am a boring task!")
doctor.tasks << Task.create(description:"I am a fantastic task!", outcome_job_id: med_school.id)
con_task2 = Task.create(description:"I am a hard task!")
con_task3 = Task.create(description:"I am an easy task!")
int_task1 = Task.create(description:"I am a dumb task!")
int_task2 = Task.create(description:"I am a lethal task!")
sem_task1 = Task.create(description:"I am a religous task!")
sem_task2 = Task.create(description:"I am a deadly task!")
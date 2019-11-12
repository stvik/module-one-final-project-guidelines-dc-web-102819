User.destroy_all
Job.destroy_all
Task.destroy_all

sara = User.create(name:"Sara",gender:"F")
med_school = Job.create(name: 'med_school', happiness_increment: 4, level: 1, money: 2000)
construction_helper = Job.create(name: 'Helper', happiness_increment: 5, level: 1, money: 3500 )
internship = Job.create(name: 'Internship', happiness_increment: 2, level: 1, money: 2500 )
seminary = Job.create(name: 'Seminary', happiness_increment: 8, level: 1, money: 0)
med_task1 = Task.create(description:"I am a fun task!")
med_task2 = Task.create(description:"I am a terrible task!")
med_task3 = Task.create(description:"I am a boring task!")
con_task1 = Task.create(description:"I am a fantastic task!")
con_task2 = Task.create(description:"I am a hard task!")
con_task3 = Task.create(description:"I am an easy task!")
int_task1 = Task.create(description:"I am a dumb task!")
int_task2 = Task.create(description:"I am a lethal task!")
sem_task1 = Task.create(description:"I am a religous task!")
sem_task2 = Task.create(description:"I am a deadly task!")
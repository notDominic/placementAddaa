from django.db import models
from users.models import CustomUser
import uuid

# Create your models here.

class Examinations(models.Model):

	university_name=models.CharField(max_length=50)
	month=models.CharField(max_length=50)
	year=models.CharField(max_length=50)

	def __str__(self):
		return f'{self.university_name} {self.month} {self.year}'


'''class UsersMarkedImp(models.Model):

	percent_imp=models.IntegerField()
	probability_of_ask=models.IntegerField()'''

class Questions(models.Model):
	
	question = models.CharField(max_length=2000)
	difficulty_level=models.CharField(max_length=20)
	#times_asked=models.IntegerField(default=0)
	marks=models.IntegerField()
	#weight=models.FloatField(max_length=30,null=True,blank=True)
	#imp_by_users=models.ManyToManyField(CustomUser,related_name='imp_by_useruser')
	#number_of_imp_by_user=models.IntegerField()#number of instances in imp_by_user..it will help performing ML
	#percent_imp=models.IntegerField()#how much percent user things it is imp
	#probability_of_ask=models.IntegerField()#what probability user things that this question will come in exam
	                   
	#examinations= models.ManyToManyField(Examinations)#in which examination it is asked
	question_author=models.ForeignKey(CustomUser,on_delete=models.PROTECT,related_name="question_author")
	note_for_question= models.CharField(max_length=2000,null=True,blank=True)
	
	def __str__(self):
		return f'{self.question}'


class Modules(models.Model):

	name=models.CharField(max_length=50)
	weight=models.FloatField(max_length=30)
	questions=models.ManyToManyField(Questions,blank=True)
	

	def __str__(self):
		return f'{self.name}'


class Subjects(models.Model):

	name=models.CharField(max_length=50)
	modules=models.ManyToManyField(Modules,blank=True)

	def __str__(self):
		return f'{self.name}'

class Semesters(models.Model):

	name=models.CharField(max_length=50)
	subjects=models.ManyToManyField(Subjects,blank=True)

	def __str__(self):
		return f'{self.name}'

class Branches(models.Model):

	name=models.CharField(max_length=50)
	semesters=models.ManyToManyField(Semesters,blank=True)

	def __str__(self):
		return f'{self.name}'


class QuestionPapers(models.Model):

	examination=models.ForeignKey(Examinations,on_delete=models.PROTECT)
	questions=models.ManyToManyField(CustomUser,blank=True)
	subject=models.CharField(max_length=50)

	def __str__(self):
		return f'{self.examination}'





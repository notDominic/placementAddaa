from django.db import models
from analysis.models import Questions,Examinations,Modules,Subjects,Semesters,Branches,QuestionPapers
from users.models import CustomUser
# Create your models here.
class GameEntries(models.Model):

	user=models.ForeignKey(CustomUser,on_delete=models.PROTECT,related_name="game_entries_user")
	subject=models.ForeignKey(Subjects,on_delete=models.PROTECT,related_name="game_entries_subject")
	questions=models.ManyToManyField(Questions,blank=True,related_name="game_entries_question")
	golden_question=models.ForeignKey(Questions,on_delete=models.PROTECT,related_name="game_entries_golden")
	silver_question=models.ForeignKey(Questions,on_delete=models.PROTECT,related_name="game_entries_silver")
	bronze_question=models.ForeignKey(Questions,on_delete=models.PROTECT,related_name="game_entries_bronze")

	def __str__(self):
		return f'{self.subject} User:-{self.user}'

class GameSubjects(models.Model):

	subject=models.ForeignKey(Subjects,on_delete=models.PROTECT,related_name="game_subjects_subject")
	entries=models.ManyToManyField(GameEntries,blank=True)
	game_for_exam=models.ForeignKey(Examinations,on_delete=models.PROTECT,related_name="my_game")#there
	#could be 2 same subjects data for 2 different games....game_for_exam will tell us for which exam this entries are

	def __str__(self):
		return f'{self.game_for_exam} {self.subject} '

class Game(models.Model):

	exam=models.ForeignKey(Examinations,on_delete=models.PROTECT,related_name="game_exam")
	game_number=models.FloatField(max_length=30)
	semester=models.ForeignKey(Semesters,on_delete=models.PROTECT,related_name="game_semester")
	game_subjects= models.ManyToManyField(GameSubjects,blank=True)

	def __str__(self):
		return f'{self.exam} GameNumber:-{self.game_number}'
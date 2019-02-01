from django.shortcuts import render
from .forms import Game1DbmsForm
from analysis.models import Questions,Examinations,Modules,Subjects,Semesters,Branches,QuestionPapers
from .models import GameEntries,GameSubjects,Game
# Create your views here.
def game1Form(request):

	if request.method=='POST':

		s_obj=Semesters.objects.get(id=request.POST['sem_id'])#sem_id is comming from both game1form.html and selectsemester.html

		try:
			if request.POST['subject_id']:#post request from game1sform
				sub_obj= Subjects.objects.get(id=request.POST['subject_id'])
				subject_id=request.POST['subject_id']
		except:#POST request from select_sem
			sub_obj= Subjects.objects.get(id=s_obj.subjects.all().first().id)
			subject_id=sub_obj.id

		subject_name=sub_obj.name

		

		
		game1_form=Game1DbmsForm(subject_id=subject_id)

		context={
		'game1_form':game1_form,
		'subjects_queryset':s_obj.subjects.all(),
		'subject_name':subject_name,
		'subject_id':int(subject_id),
		'sem_id':request.POST['sem_id'],
		}

		return render(request, "game1form.html",context)



def onSubmitGame1Form(request):

	if request.method=='POST':

		print(request.POST)
		return render(request, "test.html")



def select_semester(request):

	if request.method=='POST':

		context={
		'semester_queryset':Semesters.objects.all(),
		'game_id': request.POST['game_id']
		}

		return render(request, "select_semester.html",context)




def select_game(request):

	
	context={

	'game_queryset':Game.objects.all(),
	
	}

	return render(request, "select_game.html",context)
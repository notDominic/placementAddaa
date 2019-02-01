

from django.shortcuts import render, redirect
from .models import Questions,Examinations,Modules,Subjects,Semesters,Branches,QuestionPapers
from .forms import AddQuestionForm
# Create your views here.

def my_Redirect(request):
  return redirect("/index/")

def index(request):
    return render(request, "landing.html")

def question_sample(request):
    return render(request, "question_sample.html")

 
def add_questions(request):
	question_form=AddQuestionForm()
	

	context={

	'question_form':question_form,
	
	}

	return render(request, "add_questions.html",context) 

def test(request):
    return render(request, "test.html")

def onSubmitAddQuestionForm(request):
	if request.method=='POST':
		
		q_obj=Questions(
			      question=request.POST['question'],
			      difficulty_level=request.POST['difficulty_level'],
			      marks=request.POST['marks'],
			      question_author=request.user,
			      note_for_question=request.POST['note_for_question'],
			      )
		q_obj.save()

		m_obj=Modules.objects.get(id=int(request.POST['module_name']))
		m_obj.questions.add(q_obj)
		m_obj.save()

		s_obj=Subjects.objects.get(id=int(request.POST['subject_name']))
		s_obj.modules.add(m_obj)
		s_obj.save()

		sem_obj=Semesters.objects.get(id=int(request.POST['semester_name']))
		sem_obj.subjects.add(s_obj)
		sem_obj.save()

		b_obj=Branches.objects.get(id=int(request.POST['branch_name']))
		b_obj.semesters.add(sem_obj)

		print("DONEEEEEEEEEEEEEEEEEEEEEE")




		return render(request, "test.html")

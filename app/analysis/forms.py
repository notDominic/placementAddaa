from django import forms
from .models import Questions,Examinations,Modules,Subjects,Semesters,Branches,QuestionPapers
from django.utils.translation import gettext_lazy as _


class AddQuestionForm(forms.ModelForm):
	   # https://medium.com/@adriennedomingus/working-in-forms-with-django-97ffba4206a6
	   # https://docs.djangoproject.com/en/2.2/topics/forms/modelforms/
	   #for more on forms.ModelForm

		module_name=forms.ModelChoiceField(queryset=Modules.objects.all())
		subject_name = forms.ModelChoiceField(queryset=Subjects.objects.all())
		semester_name = forms.ModelChoiceField(queryset=Semesters.objects.all())
		branch_name = forms.ModelChoiceField(queryset=Branches.objects.all())

		class Meta:
			model = Questions
			fields = ['question','marks','note_for_question']

			widgets = {
			   'question': forms.Textarea(attrs={'cols': 80, 'rows': 3}),
			   'note_for_question':forms.Textarea(attrs={'cols': 80, 'rows': 3}),
			    }

		

		def __init__(self, *args, **kwargs):
			#print(kwargs)#you can pass values while calling 
			#question_form=AddQuestionForm(instance-request.user) in view.py
			#and kwargs will get that values
			

            #by calling super() everything above init method gets called
			super(AddQuestionForm, self).__init__(*args, **kwargs)#Calling super just means that, 
																  #regardless of these customizations we’re adding here, 
																  #we want to call the ModelForm's __init__ class as well. 
			self.fields['module_name'].queryset = Modules.objects.all()

			

		
	
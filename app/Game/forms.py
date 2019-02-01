from django import forms
from analysis.models import Questions,Examinations,Modules,Subjects,Semesters,Branches,QuestionPapers
from django.utils.translation import gettext_lazy as _
from .models import GameEntries,GameSubjects,Game

class Game1DbmsForm(forms.ModelForm):
        # https://medium.com/@adriennedomingus/working-in-forms-with-django-97ffba4206a6
	    # https://docs.djangoproject.com/en/2.2/topics/forms/modelforms/
	    #for more on forms.ModelForm

		questions =  forms.ModelChoiceField(queryset=None)#e will change queryset dynamicallyby init method
		

		class Meta:
			model = GameEntries
			fields = ['subject',]

			widgets = {
			   #'questions': forms.Textarea(attrs={'cols': 80, 'rows': 2}),
			   
			    }

		def __init__(self, *args, **kwargs):
			#you can pass values while calling 
			#question_form=Game1DbmsForm(instance-request.user) in view.py
			#and kwargs will get that values

			#print(kwargs)
			self.subject_id = kwargs.pop('subject_id')#it is pop()..therefore kwargs will be {} after pop
			#it has to be {} ...bcoz we are passing kwargs to super()..it shoul be blank

			
			

            #by calling super() everything above init method gets called
			super(Game1DbmsForm, self).__init__(*args, **kwargs)#Calling super just means that, 
																  #regardless of these customizations we’re adding here, 
																  #we want to call the ModelForm's __init__ class as well.
			#print(self.fields) 
			#print(Subjects.objects.get(id=self.subject_id).modules.all())
			
			
			
			queryset_union=0

			for module in Subjects.objects.get(id=self.subject_id).modules.all():
				if queryset_union==0:
					queryset_union=module.questions.all()
				else:
					queryset_union=queryset_union.union(module.questions.all())
			#print(queryset_union)

			self.fields['questions'].queryset = queryset_union


				


			



			
			

		
	
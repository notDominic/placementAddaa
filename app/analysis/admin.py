from django.contrib import admin

# Register your models here.
from .models import Questions,Examinations,Modules,Subjects,Semesters,Branches,QuestionPapers
# Register your models here.
admin.site.register(Questions)
admin.site.register(Examinations)
admin.site.register(Modules)
admin.site.register(Subjects)
admin.site.register(Semesters)
admin.site.register(Branches)
admin.site.register(QuestionPapers)
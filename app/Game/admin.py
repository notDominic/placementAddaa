from django.contrib import admin
from .models import GameEntries,GameSubjects,Game
# Register your models here.
admin.site.register(GameEntries)
admin.site.register(GameSubjects)
admin.site.register(Game)

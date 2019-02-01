from django.contrib import admin
from django.urls import path,include
from . import views

urlpatterns = [
         path("game1Form/", views.game1Form, name="game1Form"),
         path("select_semester/", views.select_semester, name="select_semester"),
         path("select_game/", views.select_game, name="select_game"),
         path("onSubmitGame1Form/", views.onSubmitGame1Form, name="onSubmitGame1Form"),
         

]


from django.contrib import admin
from django.urls import path,include
from . import views

urlpatterns = [
         path("index/", views.index, name="index"),
         path("", views.my_Redirect, name="my_Redirect"),
         path("add_questions/", views.add_questions, name="add_questions"),
         path("question_sample/", views.question_sample, name="question_sample"),
         path("test/", views.test, name="test"),

         path("onSubmitAddQuestionForm/", views.onSubmitAddQuestionForm, name="onSubmitAddQuestionForm"),

]


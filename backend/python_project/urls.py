from django.urls import path
from .views import MessageListView, MessageCreateView, MessageDeleteView, MessageUpdateView, MessageViewSet
from rest_framework.routers import DefaultRouter
router = DefaultRouter()
router.register('rest',MessageViewSet, basename='viewset')
urlpatterns = [
    path('',MessageListView.as_view(),name='List'),
    path('new/',MessageCreateView.as_view(),name='newpost'),
    path('delete/<pk>/',MessageDeleteView.as_view(),name='delete'),
    path('update/<pk>/', MessageUpdateView.as_view(), name= 'update'),
] + router.urls
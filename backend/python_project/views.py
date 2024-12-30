from django.views.generic import ListView
from django.views.generic.edit import CreateView, DeleteView, UpdateView
from rest_framework import viewsets
from .serializers import MessageSerializer
from .models import Message
# Create your views here.
class MessageListView(ListView):
    model = Message
    fields = [
        'body'
    ]
    template_name = 'list.html'

class MessageCreateView(CreateView):
    model = Message
    fields = ['body']
    template_name = 'newpost.html'
    success_url = '/'

class MessageUpdateView(UpdateView):
    model = Message
    fields = '__all__'
    template_name = 'newpost.html'
    success_url = '/'

class MessageDeleteView(DeleteView):
    model = Message
    template_name = 'delete.html'
    success_url = '/'

class MessageViewSet(viewsets.ModelViewSet):
    queryset = Message.objects.all()
    serializer_class = MessageSerializer

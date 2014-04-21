get '/' do
  Widget.create(title: 'raorao')
  @message = "hello world!"
  @widgets = Widget.all
  erb :index
end
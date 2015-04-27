# 001-caching-with-instance-variables
Mar 04, 2007 | 2 minutes | Performance, Caching

[http://railscasts.com/episodes/1-caching-with-instance-variables](http://railscasts.com/episodes/1-caching-with-instance-variables)

```
rails console
User.find(1)
@current_user ||= User.find(1)
```

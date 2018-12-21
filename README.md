# 404 checker
You can find 404 url list.

# How to use
1. write url in urls file
```
$ git clone https://github.com/ken-aio/404-checker.git
$ cd 404-checker
$ cat urls
https://google.com
https://google.com/notfound
```

2. exec script  
show 404 url in your console.
```
$ sh checker.sh
404 https://google.com/notfound
```

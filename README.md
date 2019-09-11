# 404 and 200 checker
You can find 404 and 200 url list and export result in csv.

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
Write 404 and 200 url in your csv file.
```
$ sh checker.sh
404 https://google.com/notfound
```

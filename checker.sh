#!/bin/sh

#!/bin/sh

while read line
do
  url=(`echo ${line}`)
  status=`curl -LI "${url}" -o /dev/null -w '%{http_code}\n' -s`
  if [ ${status} -eq 404 ]; then
  echo "${status} ${url}"
elif [ ${status} -eq 200 ]; then
   echo "${status} ${url}"
fi
done < "urls"


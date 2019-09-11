#!/bin/sh
DESTINATION='url-check-results.csv'

while read line
do
  url=(`echo ${line}`)
  status=`curl -LI "${url}" -o /dev/null -w '%{http_code}\n' -s`
  if [ ${status} -eq 404 ]; then
  echo "${status}, ${url}" >> $DESTINATION
elif [ ${status} -eq 200 ]; then
   echo "${status}, ${url}" >> $DESTINATION
fi
done < "urls"

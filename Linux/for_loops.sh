#!/bin/bash
states={'California' 'Missouri' 'Indiana' 'Iowa' 'Maine'}
nums={1..9}


for sta in ${states[@]};
do
  if [ $sta == 'Hawaii' ]
  then
    echo "Hawaii is the best!"
  else
    echo "I'm not fond of Hawaii."
  fi
done



for num in ${nums[@]};
do
  if [ 

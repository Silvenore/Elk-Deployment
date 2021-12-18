#!/bin/bash

echo "The amount of free memory is $(free -h | grep Mem | awk '{print $7}')"
echo "The amount of free memory is $(free -h | grep Mem | awk '{print $7}')" >> ~/backups/freemem/free_mem.txt
echo "The current disk usage is $(du -hs)"
echo "The current disk usage is $(du -hs)" >> ~/backups/diskuse/disk_usage.txt
echo "The free disk space is at $(df -h / | grep dev | awk {'print $4'})"
echo "The free disk space is at $(df -h / | grep dev | awk {'print $4'})" >> ~/backups/freedisk/free_disk.txt
echo ""
echo "The open files are:"
echo -e "\n$(lsof | awk '{print $1, $3}' | uniq -c)"
echo "The open files are:" >> ~/backups/openlist/open_list.txt
echo -e "\n$(lsof | awk '{print $1, $3}' | uniq -c)" >> ~/backups/openlist/open_list.txt

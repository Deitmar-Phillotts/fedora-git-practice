#!/bin/bash

# Topic: Identifying CPU/Memory Intensive processes

echo "Top 3 Memory-Hungry Processees:" > mem_report.txt
echo "-------------------------------" >> mem_report.txt

# ps aux: list all processes
# --sort--=-%mem: puts the highest memory users at the top
# head -n 4: grabs the header + top 3
ps aux --sort=-%mem | head -n 4 >> mem_report.txt

cat mem_report.txt

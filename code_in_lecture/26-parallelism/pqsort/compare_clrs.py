#! /usr/bin/python

import os
import subprocess

# dirname = os.path.dirname(os.path.abspath(__file__))
# os.chdir(os.path.dirname(os.path.abspath(__file__)))

# print("items\t\toriginal\tclrs")
# for i in range(4, 28):
#   items = 1 << i;
#   original =  subprocess.run(["./sortbench-lc", "-f", "256", "-n", str(items)],
#   stdout=subprocess.PIPE)
#   original = original.stdout.decode('utf-8').split()[2]
#   clrs =  subprocess.run(["./sortbench-lc-clrs", "-f", "256", "-n", str(items)],
#   stdout=subprocess.PIPE)
#   clrs = clrs.stdout.decode('utf-8').split()[2]
#   print(str(items).ljust(16) + original.ljust(16) + clrs.ljust(10));


print("original\tclrs")
for i in range(10):
  items = 1 << 27
  original =  subprocess.run(["./sortbench", "-f", "256", "-n", str(items)],
  stdout=subprocess.PIPE)
  original = original.stdout.decode('utf-8').split()[0]
  clrs =  subprocess.run(["./sortbench-clrs", "-f", "256", "-n", str(items)],
  stdout=subprocess.PIPE)
  clrs = clrs.stdout.decode('utf-8').split()[0]
  print(original.ljust(16) + clrs.ljust(10));

#!/bin/env python3
from datetime import datetime
import subprocess
import re

print("Start dependent job at: ", datetime.today())

# first job - no dependencies
dia=datetime.today()
print(dia)
print("Starting job1")


jid1 = subprocess.check_output("sbatch --partition=research.q job1.slurm".split())
jid1 = ''.join(re.findall(r'\d', str(jid1)))
print(jid1)

jid2 = subprocess.check_output(f"sbatch  --partition=research.q --dependency=afterok:{jid1} job2.slurm".split())
jid2 = ''.join(re.findall(r'\d', str(jid2)))

jid3 = subprocess.check_output(f"sbatch  --partition=research.q --dependency=afterok:{jid1} job3.slurm".split())
jid3 = ''.join(re.findall(r'\d', str(jid3)))

jid4 = subprocess.check_output(f"sbatch  --partition=research.q --dependency=afterany:{jid2}:{jid3} job4.slurm".split())
jid4 = ''.join(re.findall(r'\d', str(jid4)))

jid5 = subprocess.check_output(f"sbatch  --partition=research.q --dependency=afterany:{jid4} job5.slurm".split())
jid4 = ''.join(re.findall(r'\d', str(jid5)))

user = subprocess.check_output(["whoami"]).decode("utf-8").strip()
queueinfo = subprocess.check_output(["squeue", "-u", user, "-o", '"%.8A %.4C %.10m %.20E"']).decode("utf-8")
print(queueinfo.replace('"', ''))

# print final date and time
print(f"End dependent job at {datetime.today()}")

# Week 2 Lab — Process Management

## Date
May 2026 — Annual Training

## Commands Practiced
- ps aux — snapshot of all running processes
- sleep & — spawn background process
- jobs — list background jobs
- kill [PID] — SIGTERM graceful termination
- kill -9 [PID] — SIGKILL force termination
- kill -19 [PID] — SIGSTOP freeze process
- kill -18 [PID] — SIGCONT resume process
- killall [name] — kill all processes by name
- kill -l — list all signals

## Key Signals
| Signal | Number | Behavior |
|--------|--------|----------|
| SIGHUP | 1 | Reload config |
| SIGINT | 2 | Ctrl+C interrupt |
| SIGKILL | 9 | Immediate kill cannot be ignored |
| SIGTERM | 15 | Graceful termination default |
| SIGCONT | 18 | Resume stopped process |
| SIGSTOP | 19 | Freeze process cannot be ignored |

## STAT Column Values
S = Sleeping
R = Running
T = Stopped
Z = Zombie

## What I Observed
- Spawned 4 sleep processes simultaneously
- Watched PIDs appear and disappear in ps aux
- SIGTERM showed Terminated in output
- SIGKILL showed Killed in output
- SIGSTOP changed STAT from S to T visibly
- SIGCONT changed STAT from T back to S
- killall terminated all matching processes at once

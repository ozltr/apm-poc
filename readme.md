# APM PoC

This repository contains a proof of concept for the Agent and Plugin Manager (APM) system, which allows users to define and manage agents, skills, and instructions in a structured way. The APM system is designed to distribute your agent setup across multiple projects or users.

## APM Docs

- https://microsoft.github.io/apm/

## Repository Structure

```text
├── .agents             # output from the apm.yml
│   └── skills          # skill definitions
├── .apm
│   ├── agents          # agent definitions
│   ├── instructions    # instruction files
│   ├── prompts         # prompt templates
│   └── skills          # skill definitions
├── .gitignore
├── apm.lock.yaml       # locks the versions of agents, skills, and instructions.
├── apm.yml             # defines the APM configuration, including agents, skills, instructions, and dependencies.
└── readme.md           # this file

17 directories, 10 files
```

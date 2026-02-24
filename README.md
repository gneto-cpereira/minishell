# 🐚 Minishell

### As beautiful as a real shell.

A minimalist implementation of a shell, mimicking the behavior of **Bash**. This project focuses on process management, file descriptors, and signal handling.

This group project was developed as part of the **42 School** curriculum by:
- **Gabriel Pereira** - [gneto-cpereira](https://github.com/gneto-cpereira)
- **Yaroslav Derevenskyi** - [yadereve](https://github.com/yadereve)  

## 🚀 Getting Started

The project is fully **containerized** to ensure a consistent development environment across any OS.

### Prerequisites

- **Docker**
    
- **libreadline-dev** (handled automatically by the Dockerfile)
    

### How to Run

Use the provided automation script to build the image and launch the shell:

Bash

```
git clone https://github.com/gneto-cpereira/minishell.git
chmod +x run.sh
./run.sh
```

_The script handles the Docker build process, X11 authorization, and runs `make` inside the container._

---

## 🛠️ Features

- **Command Execution**: Search and launch executables based on the `PATH` variable.
    
- **Built-ins**: Implemented `echo`, `cd`, `pwd`, `export`, `unset`, `env`, and `exit`.
    
- **Redirections**: Support for `<`, `>`, `<<` (heredoc), and `>>`.
    
- **Pipes**: Execute multiple commands where the output of one is the input of the next.
    
- **Signals**: Proper handling of `Ctrl-C`, `Ctrl-D`, and `Ctrl-\`.
    


## 📂 Project Structure

- `minishell_files/`: Core source code and headers.
    
- `Makefile`: Rules for compilation with `-lreadline`.
    
- `Dockerfile`: Ubuntu-based environment with all necessary dependencies.
    
- `run.sh`: Master script for Docker orchestration and execution.
    

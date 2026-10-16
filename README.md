# Linux Server Toolkit

A Bash-based toolkit for Linux system inspection and basic health checks.

## Features

- Displays operating system and kernel information
- Reports hostname and system uptime
- Shows memory usage
- Reports root filesystem disk usage
- Warns when disk usage reaches 80%
- Includes automated tests for disk usage checks

## Requirements

- Linux
- Bash
- Standard Linux command-line utilities

## Usage

Run the system information script:

```bash
./system-info.sh
```

Run automated tests:

```bash
bash test-system-info.sh
```

Check Bash syntax:

```bash
bash -n system-info.sh
bash -n test-system-info.sh
```

## Project Status

Learning project in active development.

## Planned Improvements

- Add input validation
- Improve error handling
- Add more system health checks
- Expand automated test coverage
- Add CI checks with GitHub Actions

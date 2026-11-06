# LOS201 | Embedded Linux Labs & Assignments

![Platform](https://img.shields.io/badge/Platform-Embedded%20Linux-2E7D32)
![Language](https://img.shields.io/badge/Language-C%20%7C%20Shell-00599C)
![Focus](https://img.shields.io/badge/Focus-Kernel%20%26%20Device%20Drivers-555555)

A collection of laboratory exercises and programming assignments developed for the **LOS201 – Embedded Linux** course.

This repository documents hands-on work with Linux system configuration, kernel development, device drivers, user-space applications, multithreading, debugging, and testing.

The project is organized to demonstrate the relationship between embedded Linux system components, kernel-space programming, and user-space software.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Technology Stack](#technology-stack)
- [Repository Structure](#repository-structure)
- [Laboratory Exercises](#laboratory-exercises)
- [Programming Assignments](#programming-assignments)
- [Getting Started](#getting-started)
- [Building and Testing](#building-and-testing)
- [Technical Skills](#technical-skills)
- [Notes](#notes)
- [Author](#author)

---

## Project Overview

The LOS201 coursework explores fundamental concepts of embedded Linux through practical implementation and experimentation.

Key learning areas include:

- Embedded Linux system architecture
- Linux kernel configuration and compilation
- Bootloader and root filesystem preparation
- Linux kernel module development
- Character and miscellaneous device drivers
- IOCTL-based kernel/user-space communication
- POSIX threads and concurrent programming
- Data buffering and inter-process communication concepts
- Debugging, testing, and system-level validation

The repository contains **three laboratory exercises and two programming assignments**.

---

## Technology Stack

| Category | Technologies |
|---|---|
| Operating System | Linux / Embedded Linux |
| Programming | C, Shell scripting |
| Kernel | Linux Kernel, Loadable Kernel Modules |
| Bootloader | U-Boot |
| Root Filesystem | BusyBox, Initramfs |
| Build Tools | GNU Make, GCC, kernel build system |
| System Interfaces | IOCTL, Device Files |
| Concurrency | POSIX Threads |
| Development Tools | Git, Linux Terminal |

System components documented in Lab 01:

- Linux Kernel 5.15
- U-Boot 2022.04
- BusyBox 1.35.0

These versions describe the Lab 01 configuration work and should not be interpreted as verified compatibility requirements for every assignment.

---

## Repository Structure

```text
LOS201_Lab/
|
|-- lab01/
|   `-- Embedded Linux system setup
|
|-- lab02/
|   `-- Linux device driver experiments
|
|-- lab03/
|   `-- Debugging and testing
|
|-- assignment01/
|   |-- task1_ioctl/
|   `-- task2_misc/
|
|-- assignment02/
|   |-- app/
|   |   |-- include/
|   |   |-- src/
|   |   `-- tests/
|   |-- driver/
|   `-- tests/
|
|-- .gitignore
`-- README.md
```

### Quick Navigation

| Module | Focus | Source |
|---|---|---|
| Lab 01 | Embedded Linux system setup | [lab01](./lab01) |
| Lab 02 | Linux device drivers | [lab02](./lab02) |
| Lab 03 | Debugging and testing | [lab03](./lab03) |
| Assignment 01 | IOCTL and miscellaneous drivers | [assignment01](./assignment01) |
| Assignment 02 | Sensor driver and multithreaded application | [assignment02](./assignment02) |

---

## Laboratory Exercises

### Lab 01 — Embedded Linux System Setup

**Objective:** Explore the components and preparation process of an embedded Linux system.

Main activities:

- Linux Kernel 5.15 configuration
- U-Boot 2022.04 configuration
- BusyBox 1.35.0 configuration
- Initramfs preparation
- Kernel and bootloader build workflows
- Examination of generated system artifacts

**Learning focus:** Understanding how the bootloader, Linux kernel, and root filesystem contribute to the embedded Linux boot process.

[View Lab 01](./lab01)

### Lab 02 — Linux Device Driver

**Objective:** Study the organization and development workflow of Linux device drivers.

Main activities:

- Driver source code examination and development
- Kernel module configuration
- MTD-related experiments
- Root filesystem organization
- Driver testing and output inspection

**Learning focus:** Kernel-space programming, device driver development, and interactions with the Linux operating system.

[View Lab 02](./lab02)

### Lab 03 — Embedded Linux Debugging and Testing

**Objective:** Explore tools and methods for examining and testing embedded Linux software.

Main activities:

- Application-level experiments
- Debugging utilities
- Test script execution
- Execution log analysis
- Initramfs startup configuration
- Kernel module testing

**Learning focus:** Debugging workflows, testing practices, and troubleshooting embedded Linux applications.

[View Lab 03](./lab03)

---

## Programming Assignments

### Assignment 01 — Linux Device Driver Programming

This assignment contains two separate kernel programming tasks.

#### Task 1: IOCTL Device Driver

Directory: [`assignment01/task1_ioctl`](./assignment01/task1_ioctl)

Main files:

| File | Purpose |
|---|---|
| `asgn1_driver.c` | Kernel driver source |
| `asgn1_ctl.c` | User-space control program |
| `asgn1_ioctl.h` | Shared IOCTL definitions |
| `Makefile` | Build configuration |
| `test_asgn1.sh` | Test script |

**Technical focus:**

- Linux character device interfaces
- IOCTL commands
- Kernel-space and user-space communication
- Driver compilation and testing

#### Task 2: Miscellaneous Device Driver

Directory: [`assignment01/task2_misc`](./assignment01/task2_misc)

Main files:

| File | Purpose |
|---|---|
| `counter_driver.c` | Counter driver implementation |
| `Makefile` | Build configuration |
| `test_counter.sh` | Test script |

**Technical focus:**

- Miscellaneous device interfaces
- Kernel module programming
- Device operations
- Driver testing

[View Assignment 01](./assignment01)

---

### Assignment 02 — Sensor Monitoring System

Assignment 02 brings together a kernel-space sensor driver and a modular user-space application.

The source tree is organized into three components:

1. Linux kernel driver
2. Multithreaded application
3. Driver and application tests

#### Kernel Driver

Directory: [`assignment02/driver`](./assignment02/driver)

Main files:

- `sms_sensor_driver.c`
- `sms_sensor.h`
- `Makefile`

The driver component provides the kernel-side implementation for the sensor monitoring assignment.

#### User-Space Application

Directory: [`assignment02/app`](./assignment02/app)

The application is divided into modules with separate header and source files.

| Component | Source File |
|---|---|
| Main application | `sms_app.c` |
| Sensor thread | `sensor_thread.c` |
| Processor thread | `processor_thread.c` |
| Logger thread | `logger_thread.c` |
| Alert thread | `alert_thread.c` |
| Circular buffer | `circular_buffer.c` |

Supporting headers include:

- `sms_types.h`
- `sms_ipc.h`
- Thread-specific header files

**Technical focus:**

- Modular C application development
- Multithreaded architecture
- Sensor data handling
- Circular buffer implementation
- Inter-thread communication
- Logging and alert processing

#### Testing Components

The application includes dedicated test sources:

- `test_sensor.c`
- `test_processor.c`
- `test_logger.c`
- `test_alert.c`

The driver test directory also contains:

- `test_ioctl.c`

These files provide a basis for testing individual application components and device interfaces.

[View Assignment 02](./assignment02)

---

## Getting Started

### Prerequisites

A Linux development environment is recommended.

Depending on the selected lab or assignment, the following tools may be needed:

- GCC or a suitable cross-compiler
- GNU Make
- Linux kernel headers or kernel source
- Shell utilities
- Git
- Relevant kernel build dependencies

Kernel module compilation requires a build environment compatible with the selected target kernel.

### Clone the Repository

```bash
git clone https://github.com/mrvui123456-gif/LOS201_Lab.git
cd LOS201_Lab
```

### Explore the Source Code

```bash
# Assignment 01
cd assignment01/task1_ioctl

# Assignment 02 application
cd ../../assignment02/app
```

---

## Building and Testing

Each assignment contains its own Makefiles and, where applicable, test sources or scripts.

Example build entry points:

```bash
# Assignment 01 - IOCTL driver
make -C assignment01/task1_ioctl

# Assignment 01 - Misc driver
make -C assignment01/task2_misc

# Assignment 02 - Kernel driver
make -C assignment02/driver

# Assignment 02 - User-space application
make -C assignment02/app
```

**Important:** These are illustrative Makefile entry points, not a claim that every component builds successfully on an arbitrary host. Actual compilation may require target-specific kernel paths, compiler settings, libraries, or cross-compilation tools.

Testing should be performed in an appropriate Linux development environment. Kernel modules should preferably be evaluated on a designated test system or virtual machine rather than a production host.

---

## Technical Skills

This coursework provides practical exposure to:

**Embedded Linux Development**
- System configuration
- Kernel and root filesystem preparation
- Boot process concepts

**Kernel Programming**
- Linux device drivers
- Kernel modules
- Device interfaces and IOCTL

**System Programming**
- C programming
- POSIX threads
- Modular software architecture
- Data buffering

**Development Workflow**
- Makefile-based builds
- Shell scripting
- Debugging and testing
- Git version control

---

## Notes

- This repository is maintained for academic coursework and technical learning.
- Large generated binaries, compiled modules, root filesystem images, and temporary build artifacts may be excluded from version control.
- Some experiments depend on a specific kernel configuration or target environment.
- Build and test behavior should be verified using the appropriate toolchain and runtime environment.

---

## Author

NGUYEN TIEN THINH

**GitHub:** [mrvui123456-gif](https://github.com/mrvui123456-gif)

**Repository:** [LOS201_Lab](https://github.com/mrvui123456-gif/LOS201_Lab)

*LOS201 — Embedded Linux Labs & Assignments*

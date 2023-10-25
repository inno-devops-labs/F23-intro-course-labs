# Task 2: System Information Tools

## 1. Processor, RAM, and Network Information:

- `lshw` (Hardware Listener) is a small tool to provide detailed information on the hardware configuration of the machine.

### Processor info:

- `lshw -class processor`

**Output:**

![lshw_processor](https://github.com/uahmad235/intro-course-labs/assets/30628125/655b48ea-6046-4b8c-9a0f-9846458c72c8)

### RAM info:

- `lshw -class memory`

**Output:**

![lhw_memory](https://github.com/uahmad235/intro-course-labs/assets/30628125/2eac0590-6d73-4f9e-8997-7122b3ee16b4)

### Network info:

- `lshw -class network`

**Output:**

![lshw_network](https://github.com/uahmad235/intro-course-labs/assets/30628125/07ab302b-322e-4711-8769-9e2b7213bc91)


## 2. Operating System Specifications:
- I used `lsb_release` command to display the information regarding linux. This utility is available by default in the linux.

**Output:**

![lsb_release_a](https://github.com/uahmad235/intro-course-labs/assets/30628125/78c4ba2c-7b72-41fa-a1d5-773d0ab6c4eb)

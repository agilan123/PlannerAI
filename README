# Project A.V.A (Agenda Visualization Application)
## Description
Project A.V.A is a sophisticated web-based scheduling tool that leverages Machine Learning (ML) technology to optimize weekly task scheduling efficiently. By analyzing brief task inputs, it assigns appropriate priorities and durations, significantly reducing the time users spend planning their weeks.

## Getting Started
### How to Use Project A.V.A
1. Visit the Project A.V.A Website: Navigate to our homepage to begin the process.
2. Enter Task Descriptions: Provide a simple description for each task you wish to schedule and add it to your task list. If a task needs to be scheduled at a specific time, include that detail in your description. To delete a task, simply click the 'x' icon adjacent to the task in the list.
3. Submit Your Tasks: After listing all tasks, click the submit button.
4. Adjust Priorities and Durations: You'll be directed to a staging page, where you can view and modify the priorities and durations suggested by our ML model. At this stage, tasks are sorted by priority, serving as an intelligent task list.

### Future Enhancements
In subsequent versions, users will:
 - Specify their weekly availability via a drag-to-select calendar feature, similar to "When2meet".
 - Receive a finalized calendar view of tasks scheduled around their availability.
 - Have the option to log in and save their schedules for future reference and modification.
 - Enjoy the flexibility to revisit and adjust any phase of the schedule planning process for optimal time management.

## Methods
### Machine Learning Model
Our ML model employs a TensorFlow tokenizer to process task descriptions, outputting a numerical priority (ranging from 0 to 3) and task durations (from 1 to 6 hours). The model, trained on a dataset of 7,000 tasks developed using initial inputs and Chat-GPT for rapid expansion, boasts an accuracy of 88.2%.

### Sorting Algorithm
Post-priority and duration assignment, our algorithm schedules tasks with specified times first. Subsequent tasks are then chronologically ordered by priority and slotted into the available time spaces. Tasks that cannot be entirely accommodated within designated times spill over to the next available slot, ensuring a comprehensive and efficient schedule.

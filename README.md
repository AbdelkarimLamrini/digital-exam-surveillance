# Digital Exam Surveillance

This project is an attempt at creating a system that can be used to monitor students during skills exams. 
The system is designed to be used in a classroom setting where students are taking an exam. 
Students are required to use a desktop app, that will share their screen so the supervisor 
can monitor each student's screen in real-time.

## Architecture

This project is composed of three applications:

- **Backend**: This is a Spring Boot backend where exams are managed and students sign in to take an exam. It will spawn FFmpeg processes on the streaming server through a REST api.
- **Streaming Server**: A containerized Datarhei Core instance that will receive RTMP streams from the students and convert them to HLS streams.
- **Supervisor Frontend**: This is a ReactJS web app that the supervisor will use to manage exams and monitor students.
- **Student Frontend**: This is Flutter desktop app that the student will use to sign in to take an exam and share their screen.

## Technologies

- **Backend**: 
    - Java 21
    - Spring Boot 3.2.2
    - PostgreSQL 16.2
- **Streaming Server**:
    - Datarhei Core 16.14.0
- **Supervisor Frontend**:
    - ReactJS 18.2.0
    - Material UI 5.15.11
    - ReactPlayer w/ HLS.js
- **Student Frontend**:
    - Flutter 3.19.0
    - FFmpeg 6.0

## CampusSelect
CampusSelect is a Responsive System that connects Universities, Companies, and Students for seamless recruitment. Developed using JAVA, MYSQL, and XAMPP, it allows candidates to apply for job opportunities, while companies can efficiently hire students. The platform benefits both recruiters and applicants in the hiring process.

### Online Campus Selection System
### Introduction
The **Online Campus Selection System** is designed to streamline the hiring process for HR departments at universities and companies. It serves as an intermediate platform connecting job seekers (students) and recruiters (companies), facilitating the online selection process. It provides functionality for company registrations, student registrations, job postings, applications, and direct communication between students and companies.

### Project Summary
**Project Title**: Online Campus Selection System  
**Project Type**: Web Application  
**Front End**: ASP.NET with C#  
**Back End Database**: SQL Server 2008  

### Features
- **Admin Features**:
  - View and manage registered students and companies.
  - Full control over the system, including viewing and editing user information.

- **Company Features**:
  - Register as a company to post job openings.
  - Search for students by skills, qualifications, or category.
  - Communicate with students via message feature.
  - Conduct online exams with custom question papers.

- **Student Features**:
  - Register and create a profile with personal and educational details.
  - Search and apply for job postings.
  - Communicate with recruiters and receive messages.
  - Access job alerts based on matching qualifications.

### Installation
1. **Prerequisites**:
   - Install Visual Studio with ASP.NET support.
   - Install SQL Server 2008 for database management.

2. **Database Setup**:
   - Import `CampusSelectionDB.sql` from the `/db` folder to set up the database in SQL Server 2008.

3. **Configuration**:
   - Open `CampusSelection.sln` in Visual Studio.
   - Update connection strings in `web.config` with your database credentials.

4. **Running the Application**:
   - Start SQL Server.
   - Run the project in Visual Studio by selecting "Start Debugging" or pressing `F5`.
   - Access the application in your browser at `http://localhost:portnumber`.

### Usage
1. **Admin Login**: 
   - Access all features, view student and company lists, and manage the system.

2. **Company Login**:
   - Register and log in as a recruiter to post jobs, view applicants, and communicate with students.

3. **Student Login**:
   - Register as a student to search for jobs, apply, and communicate with companies.

### Project Structure
Online-Campus-Selection-System/ ├── src/ │ ├── Pages/ │ │ ├── Login.aspx │ │ ├── Register.aspx │ │ ├── ... │ ├── App_Code/ │ │ ├── DBConnection.cs │ │ └── ... │ └── ... ├── db/ │ └── CampusSelectionDB.sql ├── assets/ │ ├── css/ │ ├── images/ │ └── ... ├── docs/ │ ├── UseCaseDiagram.pdf │ ├── ClassDiagram.pdf │ └── ERDiagram.pdf ├── tests/ │ └── UnitTests.cs ├── README.md └── LICENSE

### Technologies Used
- **Frontend**: ASP.NET with C#
- **Backend**: SQL Server 2008
- **Development Environment**: Visual Studio

### Database Schema
The system includes tables for:
- **Students**: Stores student profiles, educational qualifications, and resumes.
- **Companies**: Contains recruiter details and job postings.
- **Jobs**: Stores details of each job posting, including requirements and eligibility.
- **Messages**: Manages messaging between students and recruiters.

See `/docs/ERDiagram.pdf` for a detailed Entity-Relationship Diagram.

### Screenshots
Include a few screenshots to illustrate key features of the application:
- **Home Page**: Main page for login and registration.
- **Student Dashboard**: Shows job alerts and profile information.
- **Company Dashboard**: Interface for posting jobs and viewing applications.
- **Admin Dashboard**: Overview of students and companies in the system.

### Contributing
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -m 'Add new feature'`).
4. Push the branch (`git push origin feature-branch`).
5. Open a Pull Request.

### License
This project is licensed under the MIT License.

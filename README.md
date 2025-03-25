# StudentProject

## 📌 Project Overview
StudentProject is a simple multi-app Django application containerized using Docker and deployed using Jenkins. It demonstrates the concept of a multi-app setup with static views, without using any database.

---

## 🛠 Features
- Multiple Django apps (**app1** and **app2**).
- Static pages with Bootstrap for styling.
- Dockerized for easy deployment.
- Jenkinsfile for CI/CD automation.
- No database usage.

---

## 🧑‍💻 Project Structure
```
StudentProject/
├── app1/
│   ├── templates/
│   │   ├── app1/
│   │   │   ├── home.html
│   │   │   ├── sample.html
│   ├── urls.py
│   ├── views.py
├── app2/
│   ├── templates/
│   │   ├── app2/
│   │   │   ├── app2.html
│   ├── urls.py
│   ├── views.py
├── StudentProject/
│   ├── __init__.py
│   ├── asgi.py
│   ├── settings.py
│   ├── urls.py
│   ├── wsgi.py
├── Dockerfile
├── Jenkinsfile
├── manage.py
├── requirements.txt
├── .dockerignore
└── README.md
```

---

## 🚀 Prerequisites
- Python 3.8+
- Docker
- Git
- Jenkins
- GitHub Account

---

## 🧑‍💻 Setup Instructions

### Step 1: Clone the Repository
```bash
git clone https://github.com/your-username/StudentProject.git
cd StudentProject
```

### Step 2: Install Dependencies
```bash
pip install -r requirements.txt
```

### Step 3: Run the Application
```bash
python manage.py runserver
```
- Access the application at `http://localhost:8000/`

---

## 🐳 Docker Instructions

### Build the Docker Image
```bash
docker build -t student_project .
```

### Run the Docker Container
```bash
docker run -p 8000:8000 student_project
```
- Access the application at `http://localhost:8000/`

---

## 🛎️ Jenkins Pipeline

1. Ensure Jenkins is installed and Docker is running.
2. Create a Jenkins job and connect it to your GitHub repository.
3. Use the provided `Jenkinsfile` to build and push the Docker image.
4. Configure Docker Hub credentials in Jenkins.

---

## 📦 Pushing to Docker Hub
1. Login to Docker Hub:
```bash
docker login
```
2. Tag your Docker image:
```bash
docker tag student_project your-dockerhub-username/student_project
```
3. Push the image:
```bash
docker push your-dockerhub-username/student_project
```

---

## ⚙️ Troubleshooting
- If Docker is not accessible, ensure Docker Desktop is running.
- Confirm that ports are not occupied using `netstat -ano | findstr :8000`.
- Check container logs using `docker logs <container_id>`.

---

## 🙌 Acknowledgements
- Django Documentation: [https://docs.djangoproject.com/](https://docs.djangoproject.com/)
- Docker Documentation: [https://docs.docker.com/](https://docs.docker.com/)
- Jenkins Documentation: [https://www.jenkins.io/doc/](https://www.jenkins.io/doc/)


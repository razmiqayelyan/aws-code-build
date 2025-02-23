# **AWS Code Build - Nginx on Amazon Linux**
🚀 **A lightweight Nginx web server running on Amazon Linux**, deployed using **Docker** and **AWS CodeBuild**.

---

## 📂 **Project Structure**
```
/aws-code-build
│── Dockerfile        # Dockerfile to create the Nginx container on Amazon Linux
│── buildspec.yml     # AWS CodeBuild configuration for CI/CD
│── index.html        # Frontend UI with modern animations
│── styles.css        # CSS styles for the web UI
│── script.js         # JavaScript animations & scroll effects
│── awslogo.png       # AWS logo displayed in the web UI
└── README.md         # Project documentation (this file)
```

---

## 🚀 **Features**
✅ **Amazon Linux 2-based Nginx Web Server**  
✅ **CI/CD with AWS CodeBuild**  
✅ **Dockerized for Portability**  
✅ **Modern Web UI with Smooth Animations**  
✅ **Optimized for Performance & Security**  

---

## 🛠️ **Setup & Installation**

### **1️⃣ Prerequisites**
Make sure you have the following installed:
- [Docker](https://docs.docker.com/get-docker/)
- [AWS CLI](https://aws.amazon.com/cli/)
- [Amazon ECR Repository](https://docs.aws.amazon.com/AmazonECR/latest/userguide/what-is-ecr.html) (for storing Docker images)

### **2️⃣ Clone the Repository**
```sh
git clone https://github.com/your-username/aws-code-build.git
cd aws-code-build
```

### **3️⃣ Build & Run the Docker Container**
```sh
docker build -t aws-code-build .
docker run -d -p 8080:80 aws-code-build
```
Now, open **http://localhost:8080** in your browser to see the UI.

---

## 🏗️ **AWS CodeBuild Deployment**

### **1️⃣ Authenticate to AWS ECR**
```sh
aws ecr get-login-password --region <AWS_REGION> | docker login --username AWS --password-stdin <AWS_ACCOUNT_ID>.dkr.ecr.<AWS_REGION>.amazonaws.com
```

### **2️⃣ Build & Tag Docker Image**
```sh
docker build -t aws-code-build .
docker tag aws-code-build:latest <AWS_ACCOUNT_ID>.dkr.ecr.<AWS_REGION>.amazonaws.com/aws-code-build:latest
```

### **3️⃣ Push Image to ECR**
```sh
docker push <AWS_ACCOUNT_ID>.dkr.ecr.<AWS_REGION>.amazonaws.com/aws-code-build:latest
```

### **4️⃣ Deploy with AWS CodeBuild**
1. Go to **AWS Console → CodeBuild**.
2. Create a new **Build Project**.
3. Use the `buildspec.yml` file from this repository.
4. Select **Amazon ECR** as the Docker image destination.
5. Start the build process.

---

## 🌐 **Web UI Preview**
The web application features:
✔️ **AWS Branding**  
✔️ **Smooth Fade-In & Scroll Animations**  
✔️ **Responsive Design for Mobile & Desktop**  

🎨 **Screenshot Preview**  
_(Add a screenshot of the running application here)_

---

## 🛠️ **Customization**
- **Modify `index.html`** to update the UI.
- **Change `styles.css`** to tweak the animations.
- **Update `Dockerfile`** if you need custom Nginx settings.

---

## 🤝 **Contributing**
Want to improve this project? **Fork, modify, and submit a PR!** 🎉  

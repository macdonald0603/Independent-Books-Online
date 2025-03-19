# Independent-Books-Online


<B>Table of Contents</B>
- Introduction
- Features
- Technologies Used
- Setup and Installation
- Usage
- License

**Introduction**
This project was primarilly a AWS 3-tiered architecture project, deployi in Dev,UAT,Prod, and focusing on hands on core AWS features, as well as Infrastructure as Code using Terraform.  
Objective: Deploy a scalable AWS infrastructure using Terraform for Dev, UAT, and Prod environments. Each environment has specific AWS resources that align with its purpose.

    Dev
    - AWS Elastic File System (EFS), CloudWatch Logs
    - Shared storage for EC2 instances, monitoring
    UAT
    - Amazon ElastiCache (Redis), AWS Step Functions
    - Caching & automated workflow testing
    Prod
    - AWS App Mesh, AWS Athena, AWS WAF
    - Service-to-service networking, analytics, security

The Independent Books Online project is an online platform that allows users to browse, purchase, and review books. The platform is designed to provide a seamless user experience with easy navigation and a variety of search options.  This front-end was just used as a model for the project.


**Features for Website** <-- Not included in code as of yet
- User Accounts: Register and log in to the platform.
- Book Search: Search for books by title, author, or genre.
- Shopping Cart: Add books to your cart and proceed to checkout.
- Reviews: Users can leave reviews for books they've purchased.

**Technologies Used**
- Frontend: HTML, CSS, JavaScript (or whatever you want to use)
- Backend: Node.js, Python, or other technologies depending on your stack.
- Database: AWS DynamoDB, MySQL, or any database technology used.
- Infrastructure: AWS services (like EC2, S3, Lambda), Terraform for Infrastructure as Code.
- Version Control: Git & GitHub.

**Setup and Installation**
Follow these steps to get your development environment set up:

**Prerequisites**
- Git: Install Git on your system if you haven't already.
- Node.js / Python / Other: Make sure the required runtime for the backend is installed.
- Terraform: For managing cloud infrastructure.

**Installation Steps**
Clone the repository:

bash
Copy
Edit
git clone https://github.com/macdonald0603/Independent-Books-Online.git
cd Independent-Books-Online

Install dependencies for the frontend and backend (if applicable):

For Node.js:
bash
Copy
Edit
npm install

For Python:
bash
Copy
Edit
pip install -r requirements.txt

**Set up the cloud infrastructure** (if applicable):

- Make sure you have Terraform installed.
= Run the Terraform configuration to set up AWS resources:
bash
Copy
Edit
terraform init
terraform apply
Start the local development server:

For Node.js (example):
bash
Copy
Edit
npm start
For Python (example):

bash
Copy
Edit
python app.py
Usage

Open your browser and go to http://localhost:3000 (or the port you configured).
You should see the homepage of the Independent Books Online platform.
Start browsing books, adding them to your cart, and leaving reviews.

License
** just a test project ** This project is licensed under the MIT License - see the LICENSE file for details.


**Architecture Diagram**
<img src="https://github.com/macdonald0603/Independent-Books-Online/blob/main/assets/images/Independent%20Books%20Arch%20Diagram%20%20-%20Prod.pdf" alt="Arch Diagram"/>

# Independent Books Online - Website

Here is a screenshot of the example front-end interface for the Independent Books Online website:
<img src="https://github.com/macdonald0603/Independent-Books-Online/blob/main/assets/images/IBOscreenshot.jpg" alt="Website Screenshot" width="400"/>

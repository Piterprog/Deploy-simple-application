# Deploy-simple-application
Create Node.js application , package it into Docker container , and deploy it to Kubernetes using Helm chart.


# Assignment Steps
1.​ Create a Simple Node.js Application
   a.​ Create a basic Express.js application that serves a simple API endpoint.
   b.​ The application should listen on port 8080 and return a JSON response.

2.​ Create a Dockerfile
   a.​ Write a Dockerfile to containerize the Node.js application.
   b.​ Build the Docker image

3.​ Docker Image
   a.​ Tag and push the Docker image to a registry. I need to be able to pull it and use.

4.​ Create a Helm Chart
   a.​ Create a Helm chart for your NodeJS app
   b.​ Modify the Helm chart to use the docker image from step 3
   c.​ Configure Horizontal Pod Autoscaler (HPA).

5.​ Deploy application (optional)
   a.​ Deploy the app to see how it works
   
6.​ GitHub repository
   a.​ Upload the Helm chart to the GitHub repo and send me the link

# Create cluster in GCP cloud
1. gcloud init
2. gcloud container clusters create storm-shadow-k8s \
  --region us-east1 \
  --node-locations us-east1-c,us-east1-d \
  --num-nodes 2 \
  --machine-type e2-standard-4 \
  --enable-autoscaling \
  --min-nodes 2 \
  --max-nodes 8 \
  --enable-autorepair \
  --release-channel "regular" \
  --network storm-shadow-vpc-net \
  --subnetwork public-subnet-1 \
  --enable-autoupgrade \
  --disk-size 20


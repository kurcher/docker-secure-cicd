1. Create the docker container using this command:
docker run -d -p 5000:5000 --restart=always --name registry registry:2
2. Download ngrok, add it to PATH (Environment Variables) then open the ngrok.exe and write in console "ngrok http 5000"
3. Ngrok should give you link like this: https://c1ac-188-163-34-160.ngrok-free.app/
4. Create workflow CI.yml file, in which you can copy my cicd.yml file
5. Add the ngroks link to the Secrets in GitHub Actions but without https://
6. Create a dockerfile (you can push it from local repository) to the directory in which .github/workflows located
7. Now you can build and push your docker images in your private registry. If you make changes in the master this will be done automatically, you can also do it manually using "run workflow"
8. To see where your images are add to the link /v2/_catalog. Example:  https://c1ac-188-163-34-160.ngrok-free.app/v2/_catalog

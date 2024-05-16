## download pre-tained models 
1. Download model from https://drive.google.com/file/d/1YfmvXwpWmhLg3jSxnhT7LvY0yawlXcr_/view

2. Put the downloaded .pth file into "weight" folder

## How to run
1. First you need to run the Docker engine

2. Run build_image.bat to build the docker image. Build process takes nearly 25 minutes, you can make youself a coffie :)

3. Put your photos to the "docker_input" folder

4. Run "run_docker.bat" and wait for the process to complete.

5. Check the results in "docker_output" folder

## How to ensure that everything is ok

1. In the "docker_output" folder yow need to navigate vit.raft5.small/"Timstamp_folder"/vis/data

2. You need to copy file named HYPERLAPSE_0020_merge.jpg into the "test" folder is the repository

3. Run tun_test.bat 

4. Check result.jpg file is should be black.

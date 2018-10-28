### How to use

This docker image for run framgia CI at your local machine without install FramgiaCI CLI tool. All you need only docker on your machine. 
This test to make sure your pull request passed framgiaCI before you send a pull request.

1. First, pull ours docker images:
    ```
    docker pull framgiaciteam/phptestandfixer:latest
    ```
2. Move into your project and run:
    ```bash
    // For run framgia-ci CLI tool - make sure you have framgia-ci.yml at current folder
    docker run -v ${PWD}:/workdir framgiaciteam/phptestandfixer framgia-ci run --local
    
    //For only check phpcs with framgia coding convention
    docker run -v ${PWD}:/workdir framgiaciteam/phptestandfixer phpcs --standard=Framgia app
    
    // For auto fix convention
    docker run -v ${PWD}:/workdir framgiaciteam/phptestandfixer phpcbf --standard=Framgia app
    ```
And more command that you need to run with FramgiaCI like eslint, phpunit....

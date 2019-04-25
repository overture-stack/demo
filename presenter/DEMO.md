# Script

## Pre
on your laptop:
- install vnc client
- setup ssh tunnel : `make init`
- connect to `localhost:5901`, enter the password to login

# Demo:
1. Show the Portal
    - portal http://142.1.177.110:8081
    this will be empty
    
2. Show how to configure the Portal using Arranger
    - admin UI http://142.1.177.110:8080
    
3. Create an entry in Song
    - `make song-create-study`
    - `make song-show-studies`
    
4. Upload a file using Score    
    - validate the analysis: `make song-upload-payload`
        - produce an upload id 
    - save the analysis : `make song-save-payload uploadId=<paste upload id here>`
    - upload the files to score: `make score-upload`
    - publish the analysis: `make song-publish`
    - see the published analysis: `make song-show-published`
    
5. Kick off Maestro
    - index the first study: `make index-study`
    
6. Show the change in the Portal
    - do 1
    
7. Show Ego admin somewhere along with the above steps 
    - do 1
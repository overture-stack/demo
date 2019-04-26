# Overture Demo
This is a demo for the overture stack it has all the major components and runs through a flow end to end.

# Prep
- you need to be on vpn
- ssh to ubuntu@142.1.177.110

# Script
1. Show the Portal
    - story book http://142.1.177.110:8081
    - navigate to portal section, this will be empty
    
2. Show how to configure the Portal using Arranger
    - admin UI http://142.1.177.110:8080
    - go through setting up arranger
        - create Project
        - configure the view (Fields, Aggs and Table) then save
        - the portal will now have empty table and facets
        
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
    - portal http://142.1.177.110:8081
    - the table will have one record for that study.
    
7. (TBD) Show Ego admin somewhere along with the above steps 
    - http://142.1.177.110:3501

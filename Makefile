#========================= Docker commands ===========================#
init:
	cp -n .env.schema .env && echo SET THE .ENV file
	sudo apt-get jq
start:
	. ./.env
	docker-compose build --no-cache
	docker-compose up -d

stop:
	docker-compose down

nuke:
	docker system prune --volumes

song-create-study:
	curl -X POST --header 'Content-Type: application/json' --header 'Accept: */*' --header 'Authorization: Bearer e6881676-d88b-411d-b8db-4404b29ed585' -d '{"description": "test","name": "test","organization": "test","studyId": "test"}' 'http://localhost:7080/studies/test/'
	@echo ""
song-show-studies:
	curl -X GET --header 'Accept: application/json' 'http://localhost:7080/studies/all'
	@echo ""
song-upload-payload:
	curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'Authorization: Bearer e6881676-d88b-411d-b8db-4404b29ed585' -d @example/exampleVariantCall.json 'http://localhost:7080/upload/test' | jq .
	@echo ""
song-save-payload:
	curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'Authorization: Bearer e6881676-d88b-411d-b8db-4404b29ed585' 'http://localhost:7080/upload/test/save/$(uploadId)?ignoreAnalysisIdCollisions=false' | jq .
	@echo ""
score-upload:
	docker run -it --rm  --network host -u $(id -u):$(id -g) --env SPRING_PROFILES=docker --env ACCESSTOKEN=e6881676-d88b-411d-b8db-4404b29ed585 --env STORAGE_URL=http://localhost:8087 --env METADATA_URL=http://localhost:7080 -v `pwd`/example:/data overture/score:1.6.1 bin/score-client upload --manifest /data/manifest.txt
	@echo ""
song-publish:
	curl -X PUT --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'Authorization: Bearer e6881676-d88b-411d-b8db-4404b29ed585' 'http://localhost:7080/studies/test/analysis/publish/TESTANALYSIS' | jq .
	@echo ""
song-show-published:
	curl -X GET --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'Authorization: Bearer e6881676-d88b-411d-b8db-4404b29ed585' 'http://localhost:7080/studies/test/analysis?analysisStates=PUBLISHED'
	@echo ""

index-study:
	curl -X POST \
	http://localhost:11235/index/repository/COLLAB/study/test \
	-H 'Content-Type: application/json' \
	-H 'cache-control: no-cache' \
	-d '{}'

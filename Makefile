IP=127.0.0.1
REPO=COLLAB

#========================= Docker commands ===========================#
start: 
	docker-compose up -d

stop:
	docker-compose down

nuke:
	docker system prune --volumes




#========================= maestro commands ===========================#
index-study-1:
	curl -X POST \
	http://$(IP):11235/index/repository/$(REPO)/study/$(STUDY) \
	-H 'Content-Type: application/json' \
	-H 'cache-control: no-cache' \
	-d '{}'

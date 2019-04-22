start: mvn-i doc-clean
	docker-compose up -d

stop:
	docker-compose down

nuke:
	docker system prune --volumes
	

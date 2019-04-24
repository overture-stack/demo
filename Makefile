#========================= Docker commands ===========================#
init:
	cp -n .env.schema .env && echo SET THE .ENV file

start:
	. ./.env
	docker-compose up -d

stop:
	docker-compose down

nuke:
	docker system prune --volumes

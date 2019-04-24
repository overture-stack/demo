IP=142.1.177.110
MAESTRO_HOST=$(IP):11235
REPO=COLLAB

init:
	ssh -L 5901:127.0.0.1:5901 -C -N -l ubuntu $(IP)




#========================= maestro commands ===========================#
index-study:
	curl -X POST \
	http://$(MAESTRO_HOST)/index/repository/$(REPO)/study/$(STUDY) \
	-H 'Content-Type: application/json' \
	-H 'cache-control: no-cache' \
	-d '{}'

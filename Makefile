build:
	docker build -t docs-server .

run:
	docker run -d -p 3005:3000 docs-server
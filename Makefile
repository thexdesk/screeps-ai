watch:
	docker run --rm -it -v $(PWD):/screeps -w /screeps node:alpine npm start

deploy:
	docker run --rm -it -v $(PWD):/screeps -w /screeps node:alpine npm run deploy

yarn-image:
	docker build -t hinshun/screeps-yarn images/screeps-yarn

yarn: yarn-image
	docker run --rm -it -v $(PWD):/screeps -w /screeps hinshun/screeps-yarn

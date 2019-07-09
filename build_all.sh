#!/bin/bash
cd shopfront
mvn clean install
docker build -t vigneshvicky13/shopfront:1.0 -t vigneshvicky13/shopfront:latest .
docker push vigneshvicky13/shopfront
cd ..
cd productcatalogue
mvn clean install
docker build -t vigneshvicky13/productcatalogue:1.0 -t vigneshvicky13/productcatalogue:latest .
docker push vigneshvicky13/productcatalogue
cd ..
cd stockmanager
mvn clean install
docker build -t vigneshvicky13/stockmanager:1.0 -t vigneshvicky13/stockmanager:latest .
docker push vigneshvicky13/stockmanager
cd ..

# eventmesh
## start
docker run -p 10000:10000 -p 10105:10105 -p 10106:10106 -p 19090:19090 -it --rm ttbb/eventmesh:nake bash
### eventmesh-rocketmq
docker run -p 10000:10000 -p 10105:10105 -p 10106:10106 -p 19090:19090 -p 9876:9876 -p 10909:10909 -p 10911:10911 -p 10912:10912 -it --rm ttbb/eventmesh:rocketmq bash

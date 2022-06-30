# downloading the golang:1.8 image from docker repo
FROM golang:1.8
# we are running shell command to create a folder
# a docker file can have multiple RUN COMMAND
RUN mkdir WORK_REPO
RUN cd WORK_REPO
# we are shifting the main.go from local system to current working directory in docker
ADD main.go .

RUN go build -o hello .

CMD ./hello

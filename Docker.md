## Steps to Run:

This only works in a Git Bash or other Unix-like environment or terminal.

```sh
docker build -t <YourDockerHubUsername>/ensf400-demo:$(git rev-parse --short HEAD)
docker run -p 8080:8080 <YourDockerHubUsername>/ensf400-demo:$(git rev-parse --short HEAD)

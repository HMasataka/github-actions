# GitHub Actions

## Run

### Manual

```bash
gh workflow run manual.yml -f greeting=goodbye
```

### Variables

```bash
gh variable set USERNAME --body 'octocat'
```

## Build

```bash
go build -o bin/example -ldflags "-X main.version=v1.2.3" go/example/main.go
```

## Container Registry

### Authentication

```bash
export GHCR_USER=$(gh config get -h github.com user)
```

```bash
gh auth refresh --scopes write:packages
```

```bash
gh auth token | docker login ghcr.io -u $GHCR_USER --password-stdin
```

### Build docker image

```bash
docker build -t ghcr.io/${GHCR_USER}/example:latest docker/example/
```

### Push/Push image

```bash
docker push ghcr.io/${GHCR_USER}/example:latest
```

```bash
docker pull ghcr.io/${GHCR_USER}/example:latest
```

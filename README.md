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

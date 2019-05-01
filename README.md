# Running AWS-ADFS in a Docker container
### Setup
export GitHub API Token: `export API_TOKEN=123456789abcdefg`
run: `build.sh rebuild`

Put this in `.bashrc` or `.zshrc` to run almost natively
```aws-adfs(){
    docker run -it --rm \
        -v "${HOME}/.aws:/root/.aws" \
        --log-driver none \
        --name aws-adfs \
        aws-adfs "$@"
}```

### Usage
to login: `$ aws-adfs login --adfs-host=adfs.host.com --no-ssl-verification`

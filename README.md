# Running AWS-ADFS in a Docker container
## Setup
```bash
$ export API_TOKEN=123456789abcdefg
$ build.sh rebuild
```

Put this in `.bashrc` or `.zshrc` to run almost natively
```bash
aws-adfs(){
    docker run -it --rm \
        -v "${HOME}/.aws:/root/.aws" \
        --log-driver none \
        --name aws-adfs \
        aws-adfs "$@"
}
```
## Usage
 ```bash
 $ aws-adfs login --adfs-host=adfs.host.com --no-ssl-verification
```


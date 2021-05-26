## Docker

### Build

```bash
docker build asd:0.0.1 .
```

### Debug

```bash
docker run -it --gpus all --name asd -p 8001:8001 -w /asd -v /media/DataDrive/:/data -v $(pwd):/asd asd:0.0.1 /bin/bash
```

> Train (TODO)

```bash
python deblur_main.py -i ./blurry_input -o ./results -sbs -amis 512
```

> Debug Testing

```bash
./entrypoint-debug.sh
```

### Run

> Train (TODO)

```bash
python deblur_main.py -i ./blurry_input -o ./results -sbs -amis 512
```

> Test

```
docker run -d --gpus all --name asd -w /asd -v /media/DataDrive/:/data -v $(pwd):/asd asd:0.0.1 entrypoint.sh
docker logs cc-real --tail 100 -f
```

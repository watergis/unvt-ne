# unvt-ne

This repository is to manage Natural Earth based United Vector Tiles.

## Usage

```
docker-compose up
```

or 

```
docker build . --tag watergis/unvt-ne
docker run -v $(pwd):/usr/src/app -it watergis/unvt-ne

cd /usr/src/app
yarn run download
yarn run tiles
```

The `ne-tiles.mbtiles` will be generated under data directory.

## Configuration

You can select which data from Natural Earth you need to include your tiles.

## License

This source code is under MIT license, however the data which will be generated from this module belong to Natural Earth's license.

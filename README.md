# out-of-the-box deepdream fork

Out-of-the-box docker image for running [google/deepdream](http://github.com/google/deepdream) without setting up caffe.

Refer to [google/deepdream](http://github.com/google/deepdream) for the original README.

#### Why
The `dream.ipynb` seems like a lot of fun till you need to install `caffe` and `pip install caffe` doesn't work, right?

The simplest option from there is to use the docker image `bvlc/caffe:cpu`, but it still doesn't work out-of-the-box and it requires to give some time to caffe in order to get it working. This image solves those configuration issues and let you play with the `dream.ipynb` running literally two commands.

#### How
The easiest way:
* Run `docker run -p 8080:8080 dataista/quick-deep-dream`
* Open `http://localhost:8080/notebooks/dream.ipynb`
* That's it! It runs!

To introduce images inside the container, use the `-v` parameter to mount a local path inside the container:
* Run `docker run -p 8080:8080 -v /some/computer/path:/quick-deep-dream/some-docker-path/ dataista/quick-deep-dream` 
* Open the url as above and operate with the images you have in `/some/computer/path`

#### Important note
The command with trigger a `jupyter notebook` on the exposed port on localhost with no token or password whatsoever. If you have your computer exposed this could be a severe risk. Be aware of that.
You can change the `Dockerfile`

#### Advanced usage

#### References
**TBD**

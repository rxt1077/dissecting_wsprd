#!/bin/bash

docker run -v $(pwd)/wsprd:/build/wsjtx-prefix/src/wsjtx/lib/wsprd -w /build/wsjtx-prefix/src/wsjtx/lib/wsprd wsjtx ./wsprd sample.wav

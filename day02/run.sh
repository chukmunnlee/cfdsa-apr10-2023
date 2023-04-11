#!/bin/bash

k run netshoot \
	-ndefault -ti \
	--restart=Never \
	--rm \
	--image=nicolaka/netshoot -- /bin/bash

#!/usr/bin/python

import numpy as np
import math
rotation = np.array([0.99885,-0.04471,-0.017021, 0.04449,0.99892,-0.013123, 0.01759,0.01235,0.99977])
r0 = np.mat([[rotation[0], rotation[1]], [rotation[3], rotation[4]]])
theta = -2.0 / 180 * 3.141592653
rd = np.mat([[math.cos(theta), -math.sin(theta)], [math.sin(theta), math.cos(theta)]])
r1 = rd * r0
print "[%f, %f, 0.04449, %f, %f, -0.013123, 0.01759, 0.01235, 0.99977]" % (r1[0, 0], r1[0, 1], r1[1, 0], r1[1, 1])

/*
 * File: test_inspector.cpp
 * Author: kissholic
 * Copyright (c) 2025 kissholic. All wrongs reserved.
 */

#include <cassert>

import khbase;
import std;

class P {
public:
	P(int x) : x(x) {}

private:
	int x;
};

template
struct kh::inspector<&P::x>;


int main() {
	P p(10);
	kh::rt_assert(kh::access_obj<int>(p) == 10);
	return 0;
}

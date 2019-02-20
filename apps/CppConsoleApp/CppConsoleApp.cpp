#include <iostream>
#include <CDynamicLib/math.h>
#include <CppStaticLib/concat.hpp>

int main()
{
	using namespace std;
	using CppStaticLib::concat;

	cout << concat("1 + 1", " = ") << add(1, 1) << endl;

	return 0;
}
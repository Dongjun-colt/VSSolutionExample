#include "stdafx.h"
#include "CppUnitTest.h"
#include <CDynamicLib/math.h>

using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace TestCDynamicLib
{
	TEST_CLASS(UnitTest1)
	{
	public:

		TEST_METHOD(TestAdd)
		{
			Assert::AreEqual(add(1, 1), 2);
		}

		TEST_METHOD(TestAddReverse)
		{
			Assert::AreEqual(add(1, -1), 0);
			Assert::AreEqual(add(2, -2), 0);
		}

		TEST_METHOD(TestAddIdentity)
		{
			Assert::AreEqual(add(0, 0), 0);
			Assert::AreEqual(add(0, 1), 1);
			Assert::AreEqual(add(1, 0), 1);
		}
	};
}
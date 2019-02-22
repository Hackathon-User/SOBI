using System;

using NUnit.Framework;

namespace PHPAppTest 
{
   [TestFixture]
    public class UnitTest1
    {
       /*Testing 02222019 */
        
        [TestCase]
        public void TestMethod1()
        {

            int a = 20;
            int b = 10;
            int c = a + b;
            Assert.AreEqual(30, c);
        }
    }
}

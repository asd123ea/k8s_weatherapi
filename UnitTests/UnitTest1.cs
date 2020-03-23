using NUnit.Framework;

namespace UnitTests
{
    public class Tests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void Test1()
        {
            Assert.True(true);
        }

        [Test]
        public void Test2()
        {
            Assert.True(true);
        }

        [Test]
        public void Test3()
        {
            Assert.True(false);
        }
    }
}
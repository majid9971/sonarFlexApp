package com.app {

    import org.flexunit.Assert;

    public class MathUtilsTest {

        private var utils:MathUtils;

        [Before]
        public function setUp():void {
            utils = new MathUtils();
        }

        [Test]
        public function testIsEven():void {
            Assert.assertTrue(utils.isEven(4));
        }

        [Test]
        public function testIsOdd():void {
            Assert.assertFalse(utils.isEven(5));
        }
    }
}

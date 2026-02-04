package com.app {

    import org.flexunit.Assert;

    public class CalculatorTest {

        private var calc:Calculator;

        [Before]
        public function setUp():void {
            calc = new Calculator();
        }

        [Test]
        public function testAdd():void {
            Assert.assertEquals(10, calc.add(5, 5));
        }

        [Test]
        public function testSubtract():void {
            Assert.assertEquals(3, calc.subtract(8, 5));
        }

        [Test]
        public function testDivide():void {
            Assert.assertEquals(2, calc.divide(10, 5));
        }

        [Test(expects="Error")]
        public function testDivideByZero():void {
            calc.divide(5, 0);
        }
    }
}

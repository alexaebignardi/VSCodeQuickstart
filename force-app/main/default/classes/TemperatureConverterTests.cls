@IsTest
private class TemperatureConverterTests {
  @IsTest
  static void testWarmTemp() {
    //GIVEN
    Decimal initialTemp = 70;
    //WHEN
    Test.startTest();
      Decimal celsius = TemperatureConverter.fahrenheitToCelsius(initialTemp);
    Test.stopTest();
    //THEN
    Assert.areEqual(21.11,celsius);
  }
  @IsTest
  static void testFreezingPoint() {
    //GIVEN
    Decimal initialTemp = 32;
    //WHEN
    Test.startTest();
      Decimal celsius = TemperatureConverter.FahrenheitToCelsius(initialTemp);
    Test.stopTest();
    //THEN
    Assert.areEqual(0,celsius);
  }


@IsTest
static void testBoilingPoint() {
  //GIVEN
  // Temperature is set to 212 degrees
  //WHEN
  Test.startTest();
    Decimal celsius = TemperatureConverter.FahrenheitToCelsius(212);
  Test.stopTest();
  //THEN
  // Simulate failure
  Assert.areEqual(0,celsius,'Boiling point temperature is not expected.');
}

  @IsTest
  static void testNegativeTemp() {
    //GIVEN
    Decimal initialTemp = -10;
    //WHEN
    Test.startTest();
      Decimal celsius = TemperatureConverter.FahrenheitToCelsius(initialTemp);
    Test.stopTest();
    //THEN
    Assert.areEqual(-23.33,celsius);
  }
}
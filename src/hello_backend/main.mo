import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor Dbank {
  stable var currentValue : Float = 300;
  //currentValue := 100;

  stable var startTime = Time.now();
  //startTime := Time.now();
  let id = 234555776542;

  public func topUp(amount : Float) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };

  public func withDraw(amount : Float) {
    let temp : Float = currentValue -amount;
    if (temp >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("Please enter a value less than or equal to the amount in your wallet");
    };
  };

  public query func checkBalance() : async Float {
    return currentValue;
  };
  // checkBalance();

  public func compound() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
  };

};

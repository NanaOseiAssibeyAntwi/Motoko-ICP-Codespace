import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Float "mo:base/Float";
import Bool "mo:base/Bool";
import Char "mo:base/Char";
import Text "mo:base/Text";
import Option "mo:base/Option";
import Debug "mo:base/Debug";

actor Example {
  // Declare variables of different primitive types
  let name : Text = "Alice";
  let age : Nat = 25;
  let temperature : Int = -3;
  let pi : Float = 3.14159;
  let isStudent : Bool = true;
  let firstLetterOfName : Char = 'A';
  let email : ?Text = null; // Optional Text

  // A function to display all information
  public func displayInfo() : async Text {
    // Handle optional email using Option.unwrapOr
    let emailInfo : Text = Option.get(email, "Email Not Available");

    let info : Text = "Name: " # name
    # " age: " # Nat.toText(age)
    # " temperature: " # Int.toText(temperature)
    # " height: " # Float.toText(pi)
    # " Is he a student: " # Bool.toText(isStudent)
    # " Initial: " # Char.toText(firstLetterOfName)
    # " email: " # emailInfo;

    return info;
  };

  public func OddOrEvenChecker(number : Int) : async Text {

    if (number >= 0) {
      if (number == 0) {
        return ("Number is Odd");
      };
      if (number % 2 == 0) {
        return ("The number " # Int.toText(number) # " is even ");
      } else {
        return ("Number is Odd");
      };
    } else {
      return "Enter a positive number";
    };
  };

  let a : Nat = 2;
  let b : Nat = 2;
  let sameAB : Bool = (a == b);
  Debug.print(("A and B are the same: " # Bool.toText(sameAB)));

  stable var currentValue : Float = 100;
  public func TopUp(amount : Float) : async Float {
    currentValue += amount;
    return currentValue;
  };

  public func WithDraw(amount : Float) : async Float {
    var adjustedAmount : Float = amount;

    if (amount < 0) {
      adjustedAmount *= -1;
    };

    currentValue -= adjustedAmount;
    return currentValue;
  };

  public query func CheckBalance() : async Float {
    return currentValue;
  };

};

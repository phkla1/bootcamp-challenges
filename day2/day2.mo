import Array "mo:base/Array";

actor second_day {
    public func average_array(array : [Int]) : async Int {
        return (Array.foldRight<Int, Int>(array, 0, func(x, acc) = x + acc)) / array.size();
    };

    public func character_count(t : Text, c : Char) : async Nat {
      var sum : Nat = 0;
      for(letter in t.chars()) {
        if(letter == c) {
          sum += 1;
        };
      };
      return sum;
    };

    public func factorial(n : Nat) : async Nat {
	func multiply_predecessor(m : Nat) : Nat {
	    if(m == 1) {
		return 1;
	    }
	    else {
		return m * multiply_predecessor(m-1);
	    };
	}
	var res : Nat = multiply_predecessor(n);
	return res;
    };

    public func number_of_words(t : Text) : async Nat {
      var num : Nat = 0;
      for(word in Text.split(t, #char(' '))) {
        num += 1;
      };
      return num;
    };
}

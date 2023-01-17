actor FirstChallenge {
  stable var counter  = 0;

  public query func multiply(n : Nat, m : Nat) : async Nat {
    return m * n;
  };

  public query func volume(n : Nat) : async Nat {
    return n**3;
  };

  public query func hours_to_minutes(n : Nat) : async Nat {
    return n * 60;
  };

  public query func get_counter() : async Nat {
    return counter;
  };

  public func set_counter(n : Nat) : async () {
    counter := n;
    return;
  };

  public query func test_divide(n : Nat, m : Nat) : async Bool {
    var rem : Nat = n % m;
    if (rem == 0) {
      return true;
    }
    else {
      return false;
    };
  };

  public query func is_even(n : Nat) : async Bool {
    if (n % 2 == 0) {
      return true;
    }
    else {
      return false;
    }
  };
};


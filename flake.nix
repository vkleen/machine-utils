{
  inputs = {
    macname.url = github:vkleen/macname;
  };
  outputs = { self, nixpkgs, macname, ... }@inputs: {
    lib = import ./. { inherit (inputs.nixpkgs) lib; inherit macname; };
  };
}

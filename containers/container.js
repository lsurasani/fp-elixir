class Container {
  constructor(x) {
    this.$value = x;
  }

  static of(x) {
    return new Container(x);
  }
}

Container.prototype.map = function (f) {
  return Container.of(f(this.$value));
};

let cont = Container.of(3);
let cont2 = Container.of("hotdogs");

let mapCont = cont.map((two) => two + 2);
let mapCont2 = cont2.map((s) => s.toUpperCase());

console.log(cont);
console.log(cont2);
console.log(mapCont);
console.log(mapCont2);

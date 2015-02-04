console.log('Entry to start');
class Shoe {

  constructor(brand, model, size) {
    this.brand = brand;
    this.model = model;
    this.size = size;
  }

  toString() {
    console.log(this.brand + this.model + this.size);
  }
}

var shoe = new Shoe('XX', 'YYY', 'ZZZ');
shoe.toString();

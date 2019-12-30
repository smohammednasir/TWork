class Vehicle {
	constructor(wheels, doors){
		this.wheels = wheels;
		this._doors = doors;
	}

	get doors(){
		return this._doors;
	}

	set doors(d){
		this._doors = d;
	}

	run(){
		console.log('Vehicle is running');
	}

	start(){
		console.log('Started Vechicle with ' + this._doors + ' doors.');
	}
}

let v = new Vehicle(4, 4);

class Car extends Vehicle {
	constructor (wheels, doors, color) {
		super(wheels, doors);
		this._color = color;
	}

	get color(){
		return this._color;
	}

	set color(c) {
		this._color = c;
	}

	start(){
		console.log('Started Car with ' + this._doors + ' doors.');
	}
}

let y = new Car(4,2,'blue');

class Ford extends Car {
	constructor(wheels, doors, color, model){
		super(wheels, doors, color);
		this.model = model;
	}

	static report(){
		console.log('This is a static method called on the class');
	}

	start(){
		console.log('Started Ford ' + this.model + ' with ' + this._doors + ' doors.');
	}
}

let f = new Ford(4, 4, 'red', 'explorer');

//ES5 Version
/*function Vehicle(wheels, doors) {
	this.wheels = wheels;
	this.doors = doors;
}

Vehicle.prototype.start = function(){
	console.log('Started Vehicle');
};*/
use core::f64::consts::PI;

pub trait Shape {
    fn field(&self) -> f64;
    fn circumference(&self) -> f64;
}

pub struct Circle {
    pub radius: f64,
}

impl Shape for Circle {
    fn field(&self) -> f64 {
        self.radius * self.radius * PI
    }

    fn circumference(&self) -> f64 {
        self.radius * 2.0 * PI
    }
}

pub struct Rectangle {
    pub width: f64,
    pub height: f64,
}

impl Shape for Rectangle {
    fn field(&self) -> f64 {
        self.width * self.height
    }

    fn circumference(&self) -> f64 {
        (self.height + self.width) * 2.0
    }
}

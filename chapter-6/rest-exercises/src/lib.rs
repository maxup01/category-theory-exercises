use core::f64::consts::PI;

pub trait Shape {
    fn field(&self) -> f64;
}

pub struct Circle {
    pub radius: f64,
}

impl Shape for Circle {
    fn field(&self) -> f64 {
        self.radius * self.radius * PI
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
}

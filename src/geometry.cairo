use debug::PrintTrait;

#[derive(Copy, Drop)]
struct Rectangle {
    height: u64,
    width: u64,
}

#[derive(Copy, Drop)]
struct Circle {
    radius: u64
}

mod geometry {
    use super::Rectangle;
    trait ShapeGeometry<T> {
        fn boundary(self: T) -> u64;
        fn area(self: T) -> u64;
    }

    impl RectangleGeometry of ShapeGeometry<Rectangle> {
        fn boundary(self: Rectangle) -> u64 {
            2* (self.height + self.width)
        }
        fn area(self: Rectangle) -> u64 {
            self.height * self.width
        }
    }
}












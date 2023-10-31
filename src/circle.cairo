use geometry::ShapeGeometry;
use circle::CircleGeometry;

mod circle {
    use super::geometry::ShapeGeometry;
    use super::Circle;
    impl CircleGeometry of ShapeGeometry<Circle> {
        fn boundary(self: Circle) -> u64 {
            (2 * 314 * self.radius) / 100
        }
        fn area(self: Circle) -> u64 {
            (314 * self.radius * self.radius) / 100
        }
    }
}

fn main() {
    let rect = Rectangle { height: 5, width: 7};
    rect.area().print();
    rect.boundary().print();

    let circ = Circle { radius: 5 };
    circ.area().print();
    circ.boundary().print();
}
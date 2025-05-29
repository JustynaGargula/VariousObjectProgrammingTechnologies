import Vapor
import Fluent

struct ProductController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        let products = routes.grouped("products")
        products.get(use: getAll)
        products.post(use: create)
        products.group(":productId") { product in
            product.get(use: get)
            product.put(use: update)
            product.delete(use: delete)
        }
    }

    func getAll(req:Request) async throws -> [Product] {
        try await Product.query(on: req.db).all()
    }

    func create(req:Request) async throws -> Product {
        let product = try req.content.decode(Product.self)
        try await product.save(on: req.db)
        return product
    }

    func get(req:Request) async throws -> Product {
        guard let product = try await Product.find(req.parameters.get("productId"), on: req.db)
        else {
            throw Abort(.notFound)
        }
        return product
    }

    func update(req:Request) async throws -> Product {
        let input = try req.content.decode(ProductUpdatedData.self)
        guard let product = try await Product.find(req.parameters.get("productId"), on: req.db)
        else {
            throw Abort(.notFound)
        }
        
        if let name = input.name {
            product.name = name
        }
        if let price = input.price {
            product.price = price
        }
        if let description = input.description {
            product.description = description
        }
        
        try await product.update(on: req.db)
        return product
    }

    func delete(req:Request) async throws -> HTTPStatus {
        guard let product = try await Product.find(req.parameters.get("productId"), on: req.db)
        else {
            throw Abort(.notFound)
        }
        try await product.delete(on: req.db)
        return .noContent
    }
}


import Foundation

/// A service that provides the core functionality for the Aegis decentralized security layer.
public protocol AegisService {

    /// Generates a new set of key shares.
    ///
    /// - Returns: An array of `KeyShare` objects.
    func generateKeyShares() async throws -> [KeyShare]

    /// Signs a transaction with a given set of key shares.
    ///
    /// - Parameters:
    ///   - transaction: The transaction to sign.
    ///   - shares: The key shares to use for signing.
    /// - Returns: The signed transaction.
    func signTransaction(transaction: Transaction, with shares: [KeyShare]) async throws -> SignedTransaction
}

/// A provider for creating `AegisService` instances.
public protocol AegisServiceProvider {

    /// Creates an `AegisService` with the given configuration.
    ///
    /// - Parameter configuration: The configuration for the Aegis service.
    /// - Returns: An instance of `AegisService`.
    func createAegisService(configuration: AegisConfiguration) async throws -> AegisService
}

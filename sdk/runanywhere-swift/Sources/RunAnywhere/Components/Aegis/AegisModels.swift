
import Foundation

/// Represents a share of a distributed key.
public struct KeyShare: Codable {

    /// The unique identifier of the key share.
    public let id: String

    /// The public key of the key share.
    public let publicKey: String

    /// The private key of the key share.
    public let privateKey: String
}

/// Represents a transaction to be signed.
public struct Transaction: Codable {

    /// The data to be signed.
    public let data: Data
}

/// Represents a signed transaction.
public struct SignedTransaction: Codable {

    /// The original transaction data.
    public let transaction: Transaction

    /// The signature of the transaction.
    public let signature: String
}

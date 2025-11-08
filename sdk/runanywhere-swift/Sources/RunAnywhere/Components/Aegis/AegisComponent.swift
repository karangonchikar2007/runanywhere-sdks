
import Foundation

/// A component responsible for managing the Aegis decentralized security layer.
public class AegisComponent: BaseComponent<AegisService> {

    /// Initializes the Aegis component with a given configuration.
    ///
    /// - Parameter configuration: The configuration for the Aegis component.
    public init(configuration: AegisConfiguration) {
        super.init(configuration: configuration)
    }

    /// Creates the Aegis service.
    ///
    /// - Returns: An instance of `AegisService`.
    override public func createService() async throws -> AegisService {
        guard let provider = ModuleRegistry.shared.serviceProvider(for: AegisService.self) as? AegisServiceProvider else {
            throw SDKError.ComponentNotAvailable("No AegisServiceProvider has been registered.")
        }
        return try await provider.createAegisService(configuration: configuration as! AegisConfiguration)
    }
}

/// Configuration for the Aegis component.
public struct AegisConfiguration: ComponentConfiguration {
    public var id: String = "aegis"
    
    /// The threshold of parties required to sign a transaction.
    public let threshold: Int
    
    /// The total number of parties involved in the signing process.
    public let totalParties: Int

    public init(threshold: Int, totalParties: Int) {
        self.threshold = threshold
        self.totalParties = totalParties
    }

    public func validate() throws {
        guard threshold > 0 else {
            throw SDKError.InvalidConfiguration("Threshold must be positive.")
        }
        guard totalParties >= threshold else {
            throw SDKError.InvalidConfiguration("Total parties must be greater than or equal to the threshold.")
        }
    }
}

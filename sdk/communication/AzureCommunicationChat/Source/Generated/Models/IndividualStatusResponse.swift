// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

public struct IndividualStatusResponse: Codable {
    // MARK: Properties

    /// Identifies the resource to which the individual status corresponds.
    public let id: String?
    /// The status code of the resource operation.
    ///
    /// Possible values include:
    ///   200 for a successful update or delete,
    ///   201 for successful creation,
    ///   400 for a malformed input,
    ///   403 for lacking permission to execute the operation,
    ///   404 for resource not found.
    public let statusCode: Int32?
    /// The message explaining why the operation failed for the resource identified by the key; null if the operation succeeded.
    public let message: String?
    /// Identifies the type of the resource to which the individual status corresponds.
    public let type: String?

    // MARK: Initializers

    /// Initialize a `IndividualStatusResponse` structure.
    /// - Parameters:
    ///   - id: Identifies the resource to which the individual status corresponds.
    ///   - statusCode: The status code of the resource operation.
    ///
    /// Possible values include:
    ///   200 for a successful update or delete,
    ///   201 for successful creation,
    ///   400 for a malformed input,
    ///   403 for lacking permission to execute the operation,
    ///   404 for resource not found.
    ///   - message: The message explaining why the operation failed for the resource identified by the key; null if the operation succeeded.
    ///   - type: Identifies the type of the resource to which the individual status corresponds.
    public init(
        id: String? = nil, statusCode: Int32? = nil, message: String? = nil, type: String? = nil
    ) {
        self.id = id
        self.statusCode = statusCode
        self.message = message
        self.type = type
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case id
        case statusCode
        case message
        case type
    }

    /// Initialize a `IndividualStatusResponse` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try? container.decode(String.self, forKey: .id)
        self.statusCode = try? container.decode(Int32.self, forKey: .statusCode)
        self.message = try? container.decode(String.self, forKey: .message)
        self.type = try? container.decode(String.self, forKey: .type)
    }

    /// Encode a `IndividualStatusResponse` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try? container.encode(id, forKey: .id) }
        if statusCode != nil { try? container.encode(statusCode, forKey: .statusCode) }
        if message != nil { try? container.encode(message, forKey: .message) }
        if type != nil { try? container.encode(type, forKey: .type) }
    }
}
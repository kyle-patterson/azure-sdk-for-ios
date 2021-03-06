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

/// Content of a chat message.
public struct ChatMessageContent: Codable, Equatable {
    // MARK: Properties

    /// Chat message content for messages of types text or html.
    public let message: String?
    /// Chat message content for messages of type topicUpdated.
    public let topic: String?
    /// Chat message content for messages of types participantAdded or participantRemoved.
    public let participants: [ChatParticipant]?
    /// Identifies a participant in Azure Communication services. A participant is, for example, a phone number or an Azure communication user. This model must be interpreted as a union: Apart from rawId, at most one further property may be set.
    public let initiatorCommunicationIdentifier: CommunicationIdentifierModel?

    // MARK: Initializers

    /// Initialize a `ChatMessageContent` structure.
    /// - Parameters:
    ///   - message: Chat message content for messages of types text or html.
    ///   - topic: Chat message content for messages of type topicUpdated.
    ///   - participants: Chat message content for messages of types participantAdded or participantRemoved.
    ///   - initiatorCommunicationIdentifier: Identifies a participant in Azure Communication services. A participant is, for example, a phone number or an Azure communication user. This model must be interpreted as a union: Apart from rawId, at most one further property may be set.
    public init(
        message: String? = nil, topic: String? = nil, participants: [ChatParticipant]? = nil,
        initiatorCommunicationIdentifier: CommunicationIdentifierModel? = nil
    ) {
        self.message = message
        self.topic = topic
        self.participants = participants
        self.initiatorCommunicationIdentifier = initiatorCommunicationIdentifier
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case message = "message"
        case topic = "topic"
        case participants = "participants"
        case initiatorCommunicationIdentifier = "initiatorCommunicationIdentifier"
    }

    /// Initialize a `ChatMessageContent` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.message = try? container.decode(String.self, forKey: .message)
        self.topic = try? container.decode(String.self, forKey: .topic)
        self.participants = try? container.decode([ChatParticipant].self, forKey: .participants)
        self.initiatorCommunicationIdentifier = try? container.decode(
            CommunicationIdentifierModel.self,
            forKey: .initiatorCommunicationIdentifier
        )
    }

    /// Encode a `ChatMessageContent` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if message != nil { try? container.encode(message, forKey: .message) }
        if topic != nil { try? container.encode(topic, forKey: .topic) }
        if participants != nil { try? container.encode(participants, forKey: .participants) }
        if initiatorCommunicationIdentifier !=
            nil { try? container.encode(initiatorCommunicationIdentifier, forKey: .initiatorCommunicationIdentifier) }
    }
}

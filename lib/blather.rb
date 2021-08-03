# Require the necessary files
%w[
  rubygems
  eventmachine
  niceogiri
  ipaddr
  digest/md5
  digest/sha1
  logger
  openssl
  sucker_punch

  active_support/core_ext/class/attribute
  active_support/core_ext/object/blank

  blather/core_ext/eventmachine
  blather/core_ext/ipaddr

  blather/cert_store
  blather/errors
  blather/errors/sasl_error
  blather/errors/stanza_error
  blather/errors/stream_error
  blather/file_transfer
  blather/file_transfer/ibb
  blather/file_transfer/s5b
  blather/jid
  blather/roster
  blather/roster_item
  blather/xmpp_node

  blather/stanza
  blather/stanza/iq
  blather/stanza/iq/command
  blather/stanza/iq/ibb
  blather/stanza/iq/ping
  blather/stanza/iq/query
  blather/stanza/iq/roster
  blather/stanza/iq/s5b
  blather/stanza/iq/si
  blather/stanza/iq/vcard
  blather/stanza/disco
  blather/stanza/disco/disco_info
  blather/stanza/disco/disco_items
  blather/stanza/disco/capabilities
  blather/stanza/message
  blather/stanza/message/muc_user
  blather/stanza/presence
  blather/stanza/presence/c
  blather/stanza/presence/status
  blather/stanza/presence/subscription
  blather/stanza/presence/muc
  blather/stanza/presence/muc_user

  blather/stanza/pubsub
  blather/stanza/pubsub/affiliations
  blather/stanza/pubsub/create
  blather/stanza/pubsub/event
  blather/stanza/pubsub/items
  blather/stanza/pubsub/publish
  blather/stanza/pubsub/retract
  blather/stanza/pubsub/subscribe
  blather/stanza/pubsub/subscription
  blather/stanza/pubsub/subscriptions
  blather/stanza/pubsub/unsubscribe

  blather/stanza/pubsub_owner
  blather/stanza/pubsub_owner/delete
  blather/stanza/pubsub_owner/purge

  blather/stanza/x

  blather/stream
  blather/stream/client
  blather/stream/component
  blather/stream/parser
  blather/stream/features
  blather/stream/features/resource
  blather/stream/features/sasl
  blather/stream/features/session
  blather/stream/features/tls
  blather/stream/features/register
].each { |r| require r }

module Blather
  @@logger = nil

  class << self

    def logger
      @@logger ||= Logger.new($stdout, level: Logger::INFO)
    end

    def logger=(logger)
      @@logger = logger
    end

  end

end

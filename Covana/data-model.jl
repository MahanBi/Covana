export Message

struct Message
    reply_on::Union{Message, String}
    message::String
end


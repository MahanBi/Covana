export Message


"""
Tree For Make Message
"""
mutable struct MessageNode
    message::String
    right::Union{Message, Nothing}
    left::Union{Message, Nothing}
end


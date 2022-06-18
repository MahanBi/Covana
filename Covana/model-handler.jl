include("data-model.jl")

export to_data_model

"""
    to_data_model(Vector["String"])::Message
    
this method need full converstation

# Arguments
- `TD`: text data vector like this ["Hello", "How Are You!", "Good"]

# Example
```julia-repl
Message(Message(Message(Message("", "hello"), "hi"), "how are you?"), "im fine thank you!")
```

"""
function to_data_model(TD::Vector{String})::Message
    last_obj = ""
    for line in TD
        last_obj = Message(last_obj, line)
    end
    return last_obj
end

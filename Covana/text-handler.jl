include("data-model.jl")

function to_data_model(TD::Vector{String})::Message
    last_obj = ""
    for line in TD
        obj = Message(last_obj, line)
        last_obj = obj
    end
    return last_obj
end

function convert_string(text::String)::Vector{String}
    return split(text, "\n") .|> strip .|> lowercase
end

function reply_line()

end

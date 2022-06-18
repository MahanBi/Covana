
export convert_chat_string

"""
convert string converstation to vector prepare to parse in data model
"""
function convert_chat_string(text::String)::Vector{String}
    return reverse!(split(text, "\n") .|> strip .|> lowercase)
end


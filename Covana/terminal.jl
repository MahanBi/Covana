using ArgParse

"""

"""
function cli_handler(parsed_args::Dict{String,Any})
    
    function conv() # TODO: get data from trained logic and make converstation
        while true
            print(">>> ")
            line = readline()
        end
    end
    
    function train() # TODO: complete after trainig logic
        while true
            print(">>> ")
            line = readline()
        end    
    end

    if parsed_args["%command%"] == "conv"
        conv()
    else
        train()
    end
end


function parse_cli()
    parser = ArgParseSettings(
        description="""
        ╔═╗┌─┐┬  ┬┌─┐┌┐┌┌─┐\n
        ║  │ │└┐┌┘├─┤│││├─┤\n
        ╚═╝└─┘ └┘ ┴ ┴┘└┘┴ ┴\n

        Covana Converstation Bot
        \n
        Github: \e]8;;https://github.com/MahanBi/Covana\e\\https://github.com/MahanBi/Covana\e]8;;\e\\
        Discord: \e]8;;https://discord.gg/f29y4zK6s2\e\\https://discord.gg/f29y4zK6s2\e]8;;\e\\
        """,
        version = "0.0.0",
        add_version = true,
    )

    @add_arg_table parser begin
        "train"
            help = "Train Bot With Custom Converstation."
            action = :command
        "conv"
            help = "Converstation With Bot."
            action = :command
        "--colorize"
            help = "colorize texts"
            action = :store_true
    end
    return parse_args(ARGS, parser)
end

function main()
    cli_handler(pars_cli())
end
main()

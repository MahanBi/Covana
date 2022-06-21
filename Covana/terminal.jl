using DocOpt

const doc = """Usage:
    train
    converstation <portWA;LDNAND AWDNan DPNd
    -h | --help | --version 
"""

using DocOpt

args = docopt(doc, version=v"0.1.1", exit_on_error=true, help=true)
println(args)
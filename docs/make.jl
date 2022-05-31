using splatt
using Documenter

DocMeta.setdocmeta!(splatt, :DocTestSetup, :(using splatt); recursive=true)

makedocs(;
    modules=[splatt],
    authors="X-Y-Zhou",
    repo="https://github.com/X-Y-Zhou/splatt.jl/blob/{commit}{path}#{line}",
    sitename="splatt.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://X-Y-Zhou.github.io/splatt.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Tutorials" => [
            "tutorials/tutorials.md",],
        "Theory" => "theory.md",
    ],
)

deploydocs(;
    repo="github.com/X-Y-Zhou/splatt.jl",
    devbranch="master",
)

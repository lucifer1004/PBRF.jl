using PBRF
using Documenter

DocMeta.setdocmeta!(PBRF, :DocTestSetup, :(using PBRF); recursive=true)

makedocs(;
    modules=[PBRF],
    authors="Gabriel Wu <wuzihua@pku.edu.cn> and contributors",
    repo="https://github.com/lucifer1004/PBRF.jl/blob/{commit}{path}#{line}",
    sitename="PBRF.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://lucifer1004.github.io/PBRF.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/lucifer1004/PBRF.jl",
    devbranch="main",
)

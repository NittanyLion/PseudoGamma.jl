using PseudoGamma
using Documenter

# DocMeta.setdocmeta!(PseudoGamma, :DocTestSetup, :(using PseudoGamma); recursive=true)

# makedocs(;
#     modules=[PseudoGamma],
#     authors="Joris Pinkse <pinkse@gmail.com> and contributors",
#     repo="https://github.com/NittanyLion/PseudoGamma.jl/blob/{commit}{path}#{line}",
#     sitename="PseudoGamma.jl",
#     format=Documenter.HTML(;
#         prettyurls=get(ENV, "CI", "false") == "true",
#         canonical="https://NittanyLion.github.io/PseudoGamma.jl",
#         edit_link="main",
#         assets=String[],
#     ),
#     pages=[
#         "Home" => "index.md",
#     ],
# )

makedocs( sitename = "PseudoGamma.jl",
    authors = "Joris Pinkse",
    pages = [
        "Home" => "index.md"
    ]
)

deploydocs(;
    repo="github.com/NittanyLion/PseudoGamma.jl",
    devbranch="main",
)

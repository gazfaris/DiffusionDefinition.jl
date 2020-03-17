using Documenter, DiffusionDefinition

makedocs(;
    modules=[DiffusionDefinition],
    format=Documenter.HTML(
        mathengine = Documenter.MathJax(
            Dict(
                :TeX => Dict(
                    :equationNumbers => Dict(
                        :autoNumber => "AMS"
                    ),
                    :Macros => Dict(
                        :ket => ["|#1\\rangle", 1],
                        :bra => ["\\langle#1|", 1],
                        :dd => "{\\textrm d}",
                    ),
                )
            )
        )
    ),
    pages=[
        "Home" => "index.md",
        "Examples" => Any[
            "Lotka-Volterra system" => joinpath("examples", "lotka_volterra.md"),
            "Sine diffusion" => joinpath("examples", "sine.md"),
            "SIR model" => joinpath("examples", "sir.md"),
            "Lorenz63 system" => joinpath("examples", "lorenz63.md"),
            "Lorenz96 system" => joinpath("examples", "lorenz96.md"),
            "Favetto-Samson model" => joinpath("examples", "favetto_samson.md"),
            "Prokaryotic autoregulatory gene network" => joinpath("examples", "prokaryote.md"),
            "FitzHugh-Nagumo model" => joinpath("examples", "fitzhugh_nagumo.md"),
            "Jansen-Rit model" => joinpath("examples", "jansen_rit.md"),
        ],
    ],
    repo="https://github.com/mmider/DiffusionDefinition.jl/blob/{commit}{path}#L{line}",
    sitename="DiffusionDefinition.jl",
    authors="Marcin Mider",
    assets=String[],
)

deploydocs(;
    repo="github.com/mmider/DiffusionDefinition.jl",
)
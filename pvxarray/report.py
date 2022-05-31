import scooby


class Report(scooby.Report):
    def __init__(self, additional=None, ncol=3, text_width=80, sort=False):
        """Initiate a scooby.Report instance."""
        core = [
            "pyvista",
            "xarray",
            "scooby",
        ]

        scooby.Report.__init__(
            self,
            additional=additional,
            core=core,
            # optional=optional,
            ncol=ncol,
            text_width=text_width,
            sort=sort,
        )

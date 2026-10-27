return {
  -- In-buffer markdown rendering, off by default (:RenderMarkdown toggle)
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    cmd = { "RenderMarkdown" },
    opts = {
      enabled = false,
    },
  },
}

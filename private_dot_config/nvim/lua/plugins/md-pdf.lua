return {
  {
    "arminveres/md-pdf.nvim",
    branch = "main",
    ft = { "markdown" },
    cmd = { "MdPdf" },
    keys = {
      {
        "<leader>cP",
        function()
          require("md-pdf").convert_md_to_pdf()
        end,
        ft = "markdown",
        desc = "Convert MD to PDF (Typst)",
      },
      {
        "<leader>mp",
        function()
          require("md-pdf").convert_md_to_pdf()
        end,
        ft = "markdown",
        desc = "Convert MD to PDF (Typst)",
      },
    },
    opts = {
      pdf_engine = "typst",
      margins = "2cm",
      toc = false,
      preview_cmd = function()
        return "open"
      end,
    },
    config = function(_, opts)
      require("md-pdf").setup(opts)
      vim.api.nvim_create_user_command("MdPdf", function()
        require("md-pdf").convert_md_to_pdf()
      end, { desc = "Convert Markdown to PDF" })
    end,
  },
}

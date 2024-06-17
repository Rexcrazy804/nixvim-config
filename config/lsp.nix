{
  plugins = {
    lspkind = {
      enable = true;
      cmp.enable = true;
    };

    lsp = {
      enable = true;

      servers = {
        java-language-server.enable = true;

        rust-analyzer = {
          enable = true;

          installCargo = false;
          installRustc = false;

          settings = {
            check = {
              command = "clippy";
              invocationLocation = "workspace";
            };

            diagnostics.styleLints.enable = true;
            rustfmt.rangeFormatting.enable = true;
          };
        };

        nil_ls = {
          enable = true;
          settings.nix = {
            flake = {
              autoEvalInputs = false;
              nixpkgsInputName = "nixpkgs";
            };
            formatting.command = ["alejandra"];
          };
        };
      };

      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
        };
        diagnostic = {
          "<leader>lf" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
        extra = [
          {
            key = "<leader>ca";
            action = "<CMD>lua vim.lsp.buf.code_action()<CR>";
            mode = ["n" "v"];
            options = {
              desc = "Code actions Menu";
            };
          }
        ];
      };
    };
  };

  extraConfigLua = ''
    local _border = "single"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }
  '';
}

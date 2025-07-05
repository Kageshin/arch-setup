-- Custom Filetype for ansible lsp
vim.filetype.add({
    pattern = {
        [".*/playbook.ya?ml"] = "yaml.ansible",
        [".*/roles/.*/tasks/.*%ya?ml"] = "yaml.ansible",
        [".*/roles/.*/handlers/.*%ya?ml"] = "yaml.ansible"
    }
})

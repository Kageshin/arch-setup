vim.filetype.add({
    pattern = {
        [".*/roles/.*/tasks/.*%ya?ml"] = "yaml.ansible",
        [".*/roles/.*/handlers/.*%ya?ml"] = "yaml.ansible"
    }
})

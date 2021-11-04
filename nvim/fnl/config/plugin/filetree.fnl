(module config.plugin.filetree
  {autoload {nvim aniseed.nvim
             nvimtree nvim-tree}})

(nvimtree.setup {:disable_newtr true
                 :hijack_newtr true
                 :open_on_setup false
                 :open_on_tab false
                 :auto_close true
                 :update_focused_file {:enable true}
                 :diagnostics {:enable true
                               :icons {:hint ""
                                       :info ""
                                       :warning ""}}})

(set nvim.g.nvim_tree_icons {:default  ""
                            :symlink ""
                            :git  {:unstaged ""
                                   :staged "S"
                                   :unmerged ""
                                   :renamed "➜"
                                   :deleted ""
                                   :untracked "U"
                                   :ignored "◌"}
                            :folder {:default ""
                                     :open ""
                                     :empty ""
                                     :empty_open ""
                                     :symlink ""}})

(set nvim.g.nvim_tree_show_icons {:git 1
                                  :folders 1
                                  :files 1
                                  :folder_arrows 1
                                  :tree_width 30})

(set nvim.g.tree_special_files {:README.md 1
                                :Makefile 1
                                :MAKEFILE 1})

(set nvim.g.nvim_tree_symlink_arrow  " >> ")


(nvim.set_keymap :n :<leader>e ":NvimTreeToggle<CR>" {:noremap true})



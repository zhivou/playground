def contain_phrase? title_list
    container = []
    title_list.each { |f| if f.match(/((S|s)elenium|(W|w)eb(D|d)river)/)
                            container << true
                          else
                            container << false
                          end }
    container
  end
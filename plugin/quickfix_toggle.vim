function QFIsOpen()
    let qf_list = filter(range(1,winnr('$')), 'getwinvar(v:val, "&ft")=="qf"')
    return len(qf_list) == 1
endfunction

function ToggleQF()
    if QFIsOpen()
        execute ':cclose'
    else
        execute ':copen'
    end
endfunction

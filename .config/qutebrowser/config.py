for i in range(1, 10):
    config.bind(f'<Alt-{i}>', 'nop', mode='normal')
    config.bind(f'<Alt-{i}>', 'nop', mode='insert')   

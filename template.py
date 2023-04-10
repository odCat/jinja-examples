from jinja2 import Environment, FileSystemLoader

environment = Environment(loader=FileSystemLoader('.'))
template = environment.get_template('template.sql')

variable = ['condition1', 'condition2', 'condition3']
print(template.render(variable=variable))

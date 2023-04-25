from jinja2 import Environment, FileSystemLoader

environment = Environment(loader=FileSystemLoader('.'))
template = environment.get_template('template.sql')

columns = ['column1', 'column2', 'column3']
conditions = ['condition1', 'condition2', 'condition3']
print(template.render(columns=columns, conditions=conditions))

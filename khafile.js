let project = new Project('Test');
project.addSources('test/kha');
project.addSources('.');
resolve(project);
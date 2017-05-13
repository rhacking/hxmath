let fs = require('fs');
let path = require('path');
let project = new Project('Test', __dirname);
project.targetOptions = {"html5":{},"flash":{},"android":{},"ios":{}};
project.setDebugDir('build/osx');
Promise.all([Project.createProject('build/osx-build', __dirname), Project.createProject('/Users/Roel/Google Drive/Projects/hxmath_kha/kha', __dirname), Project.createProject('/Users/Roel/Google Drive/Projects/hxmath_kha/kha/Kore', __dirname)]).then((projects) => {
	for (let p of projects) project.addSubProject(p);
	let libs = [];
	Promise.all(libs).then((libprojects) => {
		for (let p of libprojects) project.addSubProject(p);
		resolve(project);
	});
});

if (! Detector.webgl) Detector.addGetWebGLMessage();

var renderer, scene, camera;

var particles;

var PARTICLE_SIZE = 10;

var torus;

init();

animate();

function init() {

	container = document.getElementById('container');

	scene = new THREE.Scene();

	camera = new THREE.PerspectiveCamera(45, window.innerWidth / window.innerHeight, 1, 10000)

	camera.position.z = 70;

	var geometry1 = new THREE.TorusGeometry(50, 25, 50, 100);

	var vertices = geometry1.vertices;

	var positions = new Float32Array(vertices.length * 3);

	var colors = new Float32Array(vertices.length * 3);

	var sizes = new Float32Array(vertices.length);

	var vertex;

	var color = new THREE.Color();

	for (var i = 0, l = vertices.length; i < l; i ++) {

		vertex = vertices[ i ];

		vertex.toArray(positions, i * 3);

		sizes[ i ] = PARTICLE_SIZE * 0.5;

	}

	var geometry = new THREE.BufferGeometry();

	geometry.addAttribute('position', new THREE.BufferAttribute(positions, 3));

	geometry.addAttribute('customColor', new THREE.BufferAttribute(colors, 3));

	geometry.addAttribute('size', new THREE.BufferAttribute(sizes, 1));

	var material4 = new THREE.PointCloudMaterial({
		  color: 0xff0000,
	});

    var material6 = new THREE.MeshBasicMaterial({
		color: 0xffdddd,
		wireframe: true,
	});

	particles = new THREE.Points(geometry, material4);

	scene.background = new THREE.Color(1, 1, 1);

	scene.add(particles);

	torus = new THREE.Mesh(geometry1, material6);

	scene.add(torus);

	renderer = new THREE.WebGLRenderer();

	renderer.setPixelRatio(window.devicePixelRatio);

	renderer.setSize(window.innerWidth, window.innerHeight);

	container.appendChild(renderer.domElement);

	window.addEventListener('resize', onWindowResize, false);

}

function onWindowResize() {

	camera.aspect = window.innerWidth / window.innerHeight;
	camera.updateProjectionMatrix();

	renderer.setSize(window.innerWidth, window.innerHeight);

}

function animate() {

	requestAnimationFrame(animate);

	render();

}

function render() {

	particles.rotation.x += 0.001;
	particles.rotation.y += 0.002;

	torus.rotation.x += 0.001;
	torus.rotation.y += 0.002;

	// particles.rotation.x = 20;
	// particles.rotation.y = 20;

	// torus.rotation.x = 20;
	// torus.rotation.y = 20;


	var geometry = particles.geometry;
	var attributes = geometry.attributes;

	renderer.render(scene, camera);
}


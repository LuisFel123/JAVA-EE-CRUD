/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/javascript.js to edit this template
 */
// Función para abrir un modal
window.openModal = function (modalId) {
    document.getElementById(modalId).style.display = 'block';
    document.getElementsByTagName('body')[0].classList.add('overflow-y-hidden');
};

// Función para cerrar un modal
window.closeModal = function (modalId) {
    document.getElementById(modalId).style.display = 'none';
    document.getElementsByTagName('body')[0].classList.remove('overflow-y-hidden');
};

// Cerrar todos los modales al presionar ESC
document.onkeydown = function (event) {
    event = event || window.event;
    if (event.keyCode === 27) {
        document.getElementsByTagName('body')[0].classList.remove('overflow-y-hidden');
        let modals = document.getElementsByClassName('modal');
        Array.prototype.slice.call(modals).forEach(i => {
            i.style.display = 'none';
        });
    }
};
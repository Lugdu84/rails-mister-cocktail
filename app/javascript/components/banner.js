import Typed from 'typed.js';

const loadDynamicBannerText = () => {
    new Typed('#banner-typed-text', {
        strings: ["Créez vos cocktails", "Ajoutez, supprimez des ingrédients"],
        typeSpeed: 50,
        loop: true
    });
}

export { loadDynamicBannerText };
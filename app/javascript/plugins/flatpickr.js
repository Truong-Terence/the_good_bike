import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
  });
}

export { initFlatpickr };
// allowInput: true
// enableTime: true

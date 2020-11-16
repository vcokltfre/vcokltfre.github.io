!function (fn) {
    if (document.readyState == "complete") fn();
    else document.addEventListener("readystatechange", fn);
}(function () {
    window.selectText = function selectText(node) {
        if (typeof node == "string")
            node = document.querySelector(node);
        if (!(node instanceof Element))
            throw new TypeError("Could not find valid element.");
        if (document.body.createTextRange) {
            const range = document.body.createTextRange();
            range.moveToElementText(node);
            range.select();
        } else if (window.getSelection) {
            const selection = window.getSelection();
            const range = document.createRange();
            range.selectNodeContents(node);
            selection.removeAllRanges();
            selection.addRange(range);
        }
    }
});

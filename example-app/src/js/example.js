import { CapTest3 } from 'cap-test-3';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    CapTest3.echo({ value: inputValue })
}

import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  const inputField = document.querySelector('#message_content');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
        location.reload();
        inputField.value = '';
        window.scrollTo(0, document.body.scrollHeight);
      }
    });

  }
}

export { initChatroomCable };


import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
        location.reload();
        const message_content = document.getElementById('message_content');
        message_content.value = '';
        window.scrollTo(0, document.body.scrollHeight);
      }
    });

  }
}

export { initChatroomCable };


import consumer from "./consumer"

if (document.querySelector(".chat-header")) {
  consumer.subscriptions.create(
    {
      channel: "ChatRoomChannel",
      chat_room_id: document.querySelector(".chat-header").dataset.chatRoomId
    }
    , {
    connected() {
      console.log("connected to action cable")
      // Called when the subscription is ready for use on the server
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      // console.log(data, data.current_user_id, document.querySelector(".chat-header").dataset.userId)
      // Called when there's incoming data on the websocket for this channel
      if (data.current_user_id !== parseInt(document.querySelector(".chat-header").dataset.userId, 10)) {
        const messagesContainer = document.querySelector('.messages');
        messagesContainer.insertAdjacentHTML('beforeend', data.message_partial);
        scrollLastMessageIntoView();
      }
    }
  });
}
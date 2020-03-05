import consumer from "./consumer"

consumer.subscriptions.create("ChatRoomChannel", {
  connected() {
    console.log("connected to action cable")
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data)
    // Called when there's incoming data on the websocket for this channel
  }
});
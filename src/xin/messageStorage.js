const messages = [];

function saveMessage (message){
    messages.push(message);
};

function findMessagesForUser(userId) {
    return messages.filter(({ from, to }) => from === userId || to === userId);
};

module.exports = { findMessagesForUser, saveMessage };

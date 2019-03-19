trigger Helloworld on Account (before insert) {
    system.debug('hello world');

}
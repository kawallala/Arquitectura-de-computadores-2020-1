void encenderAlarma(){};

void configurarSensor(int on){
    volatile char *port1 = (char *)0xffff;
    char *port2 = (char *)0xfffe;
    if(on){
        port1 = 1;
        while(port1 != 1){
            ;
        }
        port2 = 1;
    }
    return;
}

void handleIntruder(){
    char *port = (char *)0xfffe;
    port = 0;
    encenderAlarma();
    return;
}
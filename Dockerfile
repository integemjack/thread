FROM espressif/idf:v5.3.1

RUN cd /opt/esp/idf/examples/openthread/ot_rcp && idf.py esp32h2 && idf.py build && git clone -b v1.1 https://github.com/espressif/esp-thread-br.git /opt/esp-thread-br && cd /opt/esp-thread-br/examples/basic_thread_border_router && idf.py set-target esp32s3 && idf.py build flash monitor


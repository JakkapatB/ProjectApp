import 'package:flutter/material.dart';

class advicePage extends StatelessWidget {
  const advicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final List<String> items = [
    "พันธุ์ข้าว",
    "เตรียมดิน",
    "การปลูก",
    "การกำจัดวัชพืช",
    "การใส่ปุ๋ย",
    "การจัดการน้ำ",
    "การเก็บเกี่ยว"
  ];
  //
  final List<String> image = [
    "assets/images/031.png",
    "assets/images/041.png",
    "assets/images/051.png",
    "assets/images/061.png",
    "assets/images/071.png",
    "assets/images/081.png",
    "assets/images/091.png"
  ];

  // final List<String> cdimage = [
  //   "(ที่มา: https://shorturl.asia/2p6wL)",
  //   " ",
  //   "(ที่มา: https://shorturl.asia/z0DyC)",
  //   "(ที่มา: https://shorturl.asia/Lls9F)",
  //   "(ที่มา: https://shorturl.asia/P9ZKy)",
  //   "(ที่มา: https://shorturl.asia/2Zi1O)",
  //   " "
  // ];

  final List<String> describ = [
    "\nข้าวเหนียวพันธุ์ กข.6 \nข้าวพันธุ์มีลักษณะเมล็ดยาวเรียว เป็นสายพันธุ์ข้าวเหนียวหอม ไวต่อช่วงแสง เป็นพันธุ์ข้าวเหนียวที่ได้รับการปรับปรุงพันธุ์มาจากข้าวเจ้าพันธุ์ขาวดอกมะลิ 105 เมื่อนำไปหุงแล้วข้าวจะนุ่ม มีกลิ่นหอม ทนแล้ง และมีคุณภาพการหุงต้มรับประทานดี เป็นข้าวเหนียวที่ให้ผลผลิตเฉลี่ยสูงสุดเป็นอันดับหนึ่ง นิยมปลูกกันแพร่หลายในภาคเหนือและภาคตะวันออกเฉียงเหนือ\n"
        "\nข้าวหอมมะลิ 105 \nเป็นสายพันธุ์ข้าวที่มีกลิ่นหอมคล้ายใบเตย เป็นพันธุ์ข้าวที่ปลูกที่อื่นได้ไม่ดีเท่ากับปลูกในไทย และเป็นพันธุ์ข้าวที่ทำให้ข้าวไทยเป็นสินค้าส่งออกที่รู้จักไปทั่วโลก ซึ่งข้าวหอมมะลิ 105 เป็นข้าวที่มีต้นกำเนิดจาก จ.ฉะเชิงเทรา เป็นข้าวพันธุ์เบาที่ได้รับการปรับปรุงพันธุ์มาจากข้าวขาวดอกมะลิ\n"
        "\nกข18 \nเป็นพันธุ์ที่ต้านทานต่อโรคใบไหม้ ข้าวพันธุ์นี้มีคุณภาพใกล้เคียงกับพันธุ์ กข6 เหมาะสำหรับพื้นที่นาน้ำฝนในเขตภาคตะวันออกเฉียงเหนือและภาคเหนือตอนบน\n"
        "\nข้าวกล้อง \nข้าวกล้องนั้นจะต้องมีส่วนของจมูกข้าวและรำข้าวติดอยู่ด้วยเสมอ ข้าวกล้องมีเส้นใยสูงมากกว่าข้าวขาว 3 - 7 เท่า การกินข้าวกล้องจะได้เส้นใยไปพร้อม ๆ กับสารอาหารที่เป็นประโยชน์ต่อร่างกายสารพัดชนิด และเส้นใยในข้าวกล้องยังทำให้รู้สึกอิ่มนานกว่าการกินข้าวขาว\n"
        "\nข้าวไรซ์เบอรี่ \nเกิดจากการผสมข้ามพันธุ์ระหว่างข้าวเจ้าหอมนิลกับข้าวขาวดอกมะลิ 105 ลักษณะเป็นข้าวเจ้าที่มีเยื่อหุ้มเมล็ดข้าวกล้องสีม่วงเข้ม ไม่ไวต่อช่วงแสง รูปร่างเมล็ดเรียวยาว ข้าวกล้องมีความนุ่ม ต้านทานต่อโรคไหม้ ไม่ต้านทานโรคหลาว คุณสมบัติเด่นทางด้านโภชนาการ คือ มีสารต้านอนุมูลอิสระสูง\n",
    "\n        ต้องเตรียมแปลงนาให้เรียบสม่ำเสมอ หากแปลงมีความลาดเอียงของพื้นที่ควรแบ่งแปลงออกให้แต่ละแปลงมีความสม่ำเสมอของพื้นที่ เพื่อให้สามารถจัดการน้ำได้ง่าย แปลงนาที่เตรียมดินดี ต้องไถลึก ปรับพื้นนาให้เรียบสม่ำเสมอ ส่งผลให้ข้าวงอกสม่ำเสมอ ลดปัญหาวัชพืชในแปลง และจัดการน้ำง่าย การเจริญเติบโตของต้นข้าวดีโดยเฉพาะรากทำให้สามารถหาอาหารและปุ๋ยที่ใส่ลงไปได้อย่างมีประสิทธิภาพ\n"
        "\n        การเพาะปลูกข้าวต่อเนื่องตลอดโดยไม่พักนาอาจจะทำให้เกิดปัญหาเมล็ดวัชพืชสะสมในแปลงมาก อาจจะต้องมีการไถเตรียมดินเพื่อล่อให้วัชพืชขึ้น แล้วไถกลบเพื่อกำจัดวัชพืช ก่อนการเตรียมดินเพื่อเพาะปลูกจริง",
    "\n        ในแต่ละพื้นที่มีการเพาะปลูกข้าวแตกต่างกันไป ตามความเหมาะสมของสภาพพื้นที่ แรงงาน เครื่องจักรกล และทุน เช่น"
        "\n        -การปลูกข้าวไร่ในที่ลาดเชิงเขา การปลูกข้าวนาดำทั้งปักดำด้วยแรงงานคนหรือเครื่องจักรนาหว่านทั้งที่เป็นนาหว่านข้าวแห้งหรือนาหว่านน้ำตม"
        "\n        -การปลูกข้าวนาโยน การปลูกข้าวนาหยอดหรือนาโรย วิธีการปลูกข้าวที่เหมาะสมต่อการจัดการมากที่สุดคือการปลูกให้เป็นแนวและต้นข้าวในแปลงไม่แน่นเกินไป เพื่อให้สะดวกต่อการจัดการแปลง วัชพืช โรคและแมลง",
    "\n        วัชพืช คือพืชอื่นนอกจากต้นข้าวที่ปลูก จะแย่งปัจจัยการเจริญเติบโตของต้นข้าว เช่น หญ้า กก ข้าวเรื้อ และ ข้าววัชพืช เน้นเป็นการป้องกัน โดยใช้เมล็ดพันธุ์ที่ไม่มีเมล็ดวัชพืชหรือข้าววัชพืชปน ไถเตรียมดินให้ดี ใช้สารควบคุมวัชพืชให้เหมาะสม ใช้เครื่องมือช่วยกำจัด และมีการจัดการระดับน้ำในแปลงช่วย หากในแปลงมีวัชพืชมาในฤดูกาลเพาะปลูกที่แล้ว อาจจะต้องมีการไถ่เพื่อล่อให้วัชพืชขึ้นมากก่อนแล้วไถกลบอีกครั้งก่อนเตรียมดินปกติ",
    "\n        ต้นข้าวต้องการธาตุอาหารเพื่อใช้สำหรับการเจริญเติบโตและให้ผลผลิต ธาตุอาหารที่มีอยู่ในดินมักไปไม่เพียงพอต่อความต้องการของพืช โดยเฉพาะไนโตรเจน ฟอสฟอรัส และโพแทสเซียม จึงจำเป็นต้องใส่เพิ่มเพื่อให้ต้นข้าวสามารถเจริญเติบโตได้ตามปกติ โดยอาจใส่ 2 - 3 ครั้งต่อการเพาะปลูกข้าว 1 ฤดู ซึ่งปุ๋ยเคมีที่ใช้สำหรับนาข้าวโดยทั่วไปมี 2 แบบคือปุ๋ยผสมที่ใส่รองพื้นหรือปุ๋ยครั้งแรก มี 2 สูตรคือ 16-20-0 และ 16-16-8 สำหรับใช้ในดินปลูกข้าวที่เป็นดินเหนียวและดินทรายตามลำดับและปุ๋ยแต่งหน้าคือปุ๋ยสูตร 46-0-0 โดยมีอัตราการให้ดังนี้ ครั้งที่ 1 ใส่ปุ๋ยหลังจากหว่าน 20 - 30 วัน หรือ หลังปักดำ 7 - 10 วัน ในอัตรา 20 - 30 กิโลกรัมต่อไร่ ส่วนปุ๋ยครั้งที่ 2 และ 3 นั้นใช้สูตร 46 - 0 - 0 อัตรา 5 - 15 กิโลกรัมต่อไร่ เมื่อข้าวอยู่ในระยะแตกกอเต็มที่และระยะสร้างรวงอ่อนตามลำดับ หากชาวนาจะใส่ปุ๋ยเพียง 2 ครั้งแนะนำให้ใส่ครั้งแรกและใส่ครั้งที่ 2 แต่งหน้าเมื่อข้าวสร้างรวงอ่อน\n",
    "\n        การขังน้ำในแปลงระยะกล้าถึงแตกกอ เพื่อการเจริญเติบโตและควบคุมวัชพืช ช่วงต่อไปอาจจะไม่จำเป็นต้องขังน้ำในแปลง และก่อนการเก็บเกี่ยว 7 - 10 วันต้องมีการระบายน้ำออกจากแปลงเพื่อให้ต้นข้าวสุกแก่พร้อมกันและรถเกี่ยวข้าวสามารถลงปฏิบัติงานได้สะดวก\n",
    "\n        เก็บเกี่ยวระยะพลับพลึง คือระยะหลังจากดอกข้าวบาน 28 - 30 วัน ควรมีการระบายน้ำออกจากแปลงนาก่อนเก็บเกี่ยว 7 - 10 วันเพื่อกระตุ้นให้ข้าวสุกแก่พร้อมกันและสามารถเก็บเกี่ยว โดยเฉพาะการใช้รถเกี่ยวนวดข้าวที่มีน้ำหนักของตัวรถมาก เมื่อเก็บเกี่ยวแล้วชาวนามักขายทันที หรือหากนำมาลดความชื้นก่อนก็จะได้ราคาเพิ่มขึ้น"
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "คำแนะนำการปลูกข้าว",
          style: TextStyle(
              color: Color.fromARGB(255, 233, 246, 243),
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF006400),
        leading: IconButton(
          icon: Icon(Icons.ac_unit_sharp),
          onPressed: () {},
        ),
      ),
      backgroundColor: Color.fromARGB(255, 222, 236, 228),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              // color: Color(),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Card tapped.');

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondRoute(
                            // cdimage: cdimage[index],
                            todo: items[index],
                            describ: describ[index],
                            image: image[index])),
                  );
                },
                child: Row(
                  children: [
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.contain, // otherwise the logo will be tiny
                        child: Image.asset(
                          image[index],
                          width: 2,
                          height: 1,
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(items[index],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  SecondRoute(
      {Key? key,
      // required this.cdimage,
      required this.todo,
      required this.describ,
      required this.image})
      : super(key: key);
  // final String cdimage;
  final String todo;
  final String describ;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF006400),
        title: Text(
          todo,
          style: TextStyle(
              color: Color.fromARGB(255, 234, 244, 241),
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(image),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: Text(cdimage, style: TextStyle(fontSize: 16)),
              // ),
              Align(
                alignment: Alignment.center,
                child: Text("\n" + todo,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              Text(describ, style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}

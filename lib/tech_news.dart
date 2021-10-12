import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TechNews extends StatelessWidget {
  const TechNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text('Latest News',
              style:  TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                //fontFamily:
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    ListTile(
                      title: Text(
                      'Google gives security keys to 10,000 high-risk users',
                        style:  TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          //fontFamily:
                        ),
                  ),
                      subtitle: Text(
                        'BBC News',
                      ),
                      onTap: () async {
                        const url = 'https://www.bbc.com/news/technology-58844502';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    const Divider(
                      height: 20,
                      thickness: 5,
                    ),
                    ListTile(
                      title: Text(
                        'Amazon expands remote work options for many employees as pandemic persists',
                        style:  TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          //fontFamily:
                        ),
                      ),
                      subtitle: Text(
                        'Shelby Brown',
                      ),
                      onTap: () async {
                        const url = 'https://www.cnet.com/news/amazon-expands-remote-work-options-for-many-employees-as-pandemic-persists/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    const Divider(
                      height: 20,
                      thickness: 5,
                    ),
                    ListTile(
                      title: Text(
                        'Adobe shows off upcoming Camera Raw support for Photoshop on iPad',
                        style:  TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          //fontFamily:
                        ),
                      ),
                      subtitle: Text(
                        'Sam Byford',
                      ),
                      onTap: () async {
                        const url = 'https://www.theverge.com/2021/10/12/22722122/adobe-photoshop-ipad-camera-raw-support-coming-soon';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    const Divider(
                      height: 20,
                      thickness: 5,
                    ),
                    ListTile(
                      title: Text(
                        'Ecobee’s smart thermostat is the first third-party device with Siri on board',
                        style:  TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          //fontFamily:
                        ),
                      ),
                      subtitle: Text(
                        'Jennifer Pattison Tuohy',
                      ),
                      onTap: () async {
                        const url = 'https://www.theverge.com/2021/10/12/22720890/siri-voice-control-ecobee-smart-thermostats';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    const Divider(
                      height: 20,
                      thickness: 5,
                    ),
                    ListTile(
                      title: Text(
                        'Microsoft says it mitigated the largest DDoS attack ever recorded',
                        style:  TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          //fontFamily:
                        ),
                      ),
                      subtitle: Text(
                        'Tom Warren',
                      ),
                      onTap: () async {
                        const url = 'https://www.theverge.com/2021/10/12/22722155/microsoft-azure-biggest-ddos-attack-ever-2-4-tbps';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    const Divider(
                      height: 20,
                      thickness: 5,
                    ),
                    ListTile(
                      title: Text(
                        'HTC’s new Vive Flow headset reportedly launches this week',
                        style:  TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          //fontFamily:
                        ),
                      ),
                      subtitle: Text(
                        'Jay Peters',
                      ),
                      onTap: () async {
                        const url = 'https://www.theverge.com/2021/10/11/22721337/htc-vive-flow-vr-headset-vivport-verse-metaverse';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    const Divider(
                      height: 20,
                      thickness: 5,
                    ),
                    ListTile(
                      title: Text(
                        'IBM helps launch fourth tuition-free tech program in Canada',
                        style:  TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          //fontFamily:
                        ),
                      ),
                      subtitle: Text(
                        'Pragya Sehgal',
                      ),
                      onTap: () async {
                        const url = 'https://www.itworldcanada.com/article/ibm-helps-launch-fourth-tuition-free-tech-program-in-canada/423589';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    const Divider(
                      height: 20,
                      thickness: 5,
                    ),
                    ListTile(
                      title: Text(
                        'BlackBerry helps partners secure software supply chain',
                        style:  TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          //fontFamily:
                        ),
                      ),
                      subtitle: Text(
                        'Howard Solomon',
                      ),
                      onTap: () async {
                        const url = 'https://www.itworldcanada.com/article/blackberry-helps-partners-secure-software-supply-chain/460441';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    const Divider(
                      height: 20,
                      thickness: 5,
                    ),
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

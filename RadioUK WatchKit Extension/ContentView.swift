//
//  ContentView.swift
//  RadioUK WatchKit Extension
//
//  Created by apeatling on 2020-09-27.
//

import SwiftUI
import AVFoundation
import MediaPlayer

// Set up the session.
let session = AVAudioSession.sharedInstance()

var talkSportPlayer = AVPlayer( playerItem: AVPlayerItem(asset: AVURLAsset(url: URL(string:  "https://radio.talksport.com/stream?aw_0_1st.platform=vr-web&aw_0_req.userConsentV2=&aw_0_1st.playerid=vr-web;&permutive=%5B%2223399%22%2C%2223999%22%2C%2228403%22%2C%2233932%22%5D&__cb=334697357204859&___cb=391152519779371")! ), automaticallyLoadedAssetKeys: nil ) )

var bbcPlayer = AVPlayer( playerItem: AVPlayerItem(url: URL(string: "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio5live_mf_p")! ) )

var news1130Player = AVPlayer( playerItem: AVPlayerItem(url: URL(string: "https://rogers-hls.leanstream.co/rogers/van1130.stream/playlist.m3u8")! ) )

var cnbcPlayer = AVPlayer( playerItem: AVPlayerItem(url: URL(string: "https://ad-hls.tunein.com/v1/master/30ead7055f8b8e1f2f04add745f139b184df6925/production/v2/newsfree/cnbcfree/master.m3u8?ads.cust_params=partnerId%253dqZjjnm85%2526ads_partner_alias%253dqZjjnm85%2526version%253d0.52%2526premium%253dfalse%2526abtest%253d%2526language%253den-US%2526stationId%253ds110052%2526is_ondemand%253dfalse%2526genre_id%253dg3124%2526class%253dtalk%25252cspoken%25252cnews%2526is_family%253dfalse%2526is_mature%253dfalse%2526country_region_id%253d227%2526station_language%253denglish%2526programId%253dp124772%2526is_event%253dfalse&url=https%3a%2f%2ftunein.com%2fradio%2fs110052&description_url=https%3a%2f%2ftunein.com%2fradio%2fs110052&ads.npa=1&ads.gdfp_req=1&ads.ppid=3da7e7e6c62ade336cea3fd6ba3f0021&aw_0_1st.playerid=qZjjnm85&aw_0_1st.skey=1601331527&aw_0_1st.platform=tunein")! ) )

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button(
                    action: {
                        try! session.setCategory(.playback,
                              mode: .default,
                              policy: .longFormAudio,
                              options: [])

                        // Activate and request the route.
                        session.activate(options: []) { (success, error) in
                            // Play the audio file.
                            talkSportPlayer.play()
                        }
                    },
                    label: {
                        Text("TalkSport")
                    }
                )
                .frame(width: 100.0, height: 80.0)
                .foregroundColor(.yellow)
                Button(
                    action: {
                        try! session.setCategory(.playback,
                                                 mode: .default,
                                                 policy: .longFormAudio,
                                                 options: [])
                        
                        // Activate and request the route.
                        session.activate(options: []) { (success, error) in
                            // Play the audio file.
                            bbcPlayer.play()
                        }
                    },
                    label: {
                        Text("5Live")
                    }
                )
                .foregroundColor(.blue)
            }
            HStack {
                Button(
                    action: {
                        try! session.setCategory(.playback,
                                                 mode: .default,
                                                 policy: .longFormAudio,
                                                 options: [])
                        
                        // Activate and request the route.
                        session.activate(options: []) { (success, error) in
                            // Play the audio file.
                            news1130Player.play()
                        }
                    },
                    label: {
                        Text("News1130")
                    }
                   
                )
                .frame(width: 100.0, height: 50.0)
                .foregroundColor(.green)
                Button(
                    action: {
                        try! session.setCategory(.playback,
                                                 mode: .default,
                                                 policy: .longFormAudio,
                                                 options: [])
                        
                        // Activate and request the route.
                        session.activate(options: []) { (success, error) in
                            // Play the audio file.
                            cnbcPlayer.play()
                        }
                    },
                    label: {
                        Text("CNBC")
                    }
                )
                .foregroundColor(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

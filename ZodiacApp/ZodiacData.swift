//
//  ZodiacData.swift
//  ZodiacApp
//
//  Created by Kyoungran Park on 2024-10-02.
//

import SwiftUI

// Zodiac data model
struct Zodiac: Identifiable {
    var id = UUID()
    var name: String
    var symbol: String
    var dateRange: String
    var description: String
    var imageName: String
}

// Zodiac data array
let zodiacData = [
    Zodiac(name: "Aries", symbol: "♈", dateRange: "Mar 21 – Apr 19", description: """
        Aries's masculine nature is forthright with vigor, amplified by Mars. Aries is vivacious, enthusiastic, childish, and a bit selfish. 
        They are impulsive and hotheaded, but quick-thinking and dynamic. Aries is known to initiate, although completion may not always be guaranteed.
        """, imageName: "aries"),
        
    Zodiac(name: "Taurus", symbol: "♉", dateRange: "Apr 20 – May 20", description: """
        Taurus is elegant and feminine, ruled by Venus. Known for great taste and love of pleasures, Taurus can be stubborn but persistent, weathering all storms.
        Taurus cherishes rewards, physical pleasures, and a life filled with beauty and comfort.
        """, imageName: "taurus"),
        
    Zodiac(name: "Gemini", symbol: "♊", dateRange: "May 21 – Jun 20", description: """
        Fickle and flighty, Gemini is ruled by Mercury, concerned with learning and sharing knowledge. Their duality allows them to consider all perspectives, 
        and they are intellectually curious, witty, and a life of the party.
        """, imageName: "gemini"),
        
    Zodiac(name: "Cancer", symbol: "♋", dateRange: "Jun 21 – Jul 22", description: """
        Cancer, ruled by the Moon, is driven by deep intuition. With a nurturing, motherly nature, Cancers love family and home. 
        They are compassionate, emotional, and deeply tied to their roots and memories.
        """, imageName: "cancer"),
        
    Zodiac(name: "Leo", symbol: "♌", dateRange: "Jul 23 – Aug 22", description: """
        Leo loves the spotlight and has a dramatic, enthusiastic presence. As the king of the zodiac, Leo is bold, audacious, and always ready to take center stage.
        """, imageName: "leo"),
    
    Zodiac(name: "Virgo", symbol: "♍", dateRange: "Aug 23 – Sep 22", description: """
        Virgo is meticulous, known for their attention to detail. Ruled by Mercury, Virgos are practical, analytical, and prefer things to be perfect. 
        They are always seeking ways to improve and refine processes.
        """, imageName: "virgo"),
    
    Zodiac(name: "Libra", symbol: "♎", dateRange: "Sep 23 – Oct 22", description: """
        Libra, represented by the scales, is focused on balance and harmony. With a social, charming nature, Libras love relationships and fairness.
        They seek peace in all their interactions and enjoy pleasing aesthetics.
        """, imageName: "libra"),
    
    Zodiac(name: "Scorpio", symbol: "♏", dateRange: "Oct 23 – Nov 21", description: """
        Scorpio is intense, passionate, and mysterious, ruled by both Mars and Pluto. Known for their emotional depth and strong will, Scorpios are determined and fearless.
        They are constantly evolving, transforming themselves like a Phoenix from the ashes.
        """, imageName: "scorpio"),
    
    Zodiac(name: "Sagittarius", symbol: "♐", dateRange: "Nov 22 – Dec 21", description: """
        Sagittarius is adventurous, optimistic, and free-spirited. With a love for exploration and knowledge, they are driven by philosophical pursuits.
        Ruled by Jupiter, they possess boundless energy and a positive outlook on life.
        """, imageName: "sagittarius"),
    
    Zodiac(name: "Capricorn", symbol: "♑", dateRange: "Dec 22 – Jan 19", description: """
        Capricorn is ambitious, practical, and disciplined. Known for their perseverance, Capricorns work tirelessly to achieve their goals.
        Ruled by Saturn, they take life seriously and value structure and responsibility.
        """, imageName: "capricorn"),
    
    Zodiac(name: "Aquarius", symbol: "♒", dateRange: "Jan 20 – Feb 18", description: """
        Aquarius is innovative, independent, and visionary. Ruled by both Saturn and Uranus, they have a strong desire to change the world for the better. 
        They are progressive thinkers who value individuality and human welfare.
        """, imageName: "aquarius"),
    
    Zodiac(name: "Pisces", symbol: "♓", dateRange: "Feb 19 – Mar 20", description: """
        Pisces is compassionate, intuitive, and imaginative. As a water sign, they are emotionally deep and often have a spiritual or artistic nature.
        Ruled by Neptune, Pisces tend to dream big and connect with others on a profound level.
        """, imageName: "pisces")
]

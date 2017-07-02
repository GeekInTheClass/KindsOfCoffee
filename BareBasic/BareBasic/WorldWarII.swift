//
//  File.swift
//  BareBasic
//
//  Created by YeongsikLee on 2017. 3. 23..
//  Copyright © 2017년 CodersHigh. All rights reserved.
//

import Foundation


typealias TimeYMD = (y:Int, m:Int, d:Int)

class Time
{
    var value:TimeYMD
    {
        get{
            print("\(self.value.y)년 \(self.value.m)월 \(self.value.d)일" )
            return self.value;
        }
        
        set(newTime){
            print("\(self.value.y)년 \(self.value.m)월 \(self.value.d)일" )
            self.value = newTime
        }
    };
    
    init(_ y:Int, _ m:Int, _ d:Int)
    {
        value = TimeYMD(y:y, m:m, d:d)
    }
}

class Nation
{
    var name:String
    
    init(name:String)
    {
        self.name = name
    }
}

class Event : WorldWarII
{
    var title:String
    
    init(title:String, begin: Time, end: Time) {
        self.title = ""
        super.init(begin, end)
    }
}

class WorldWarII
{
    var begin:Time;
    var end:Time;
    
    var axixPowers:[Nation] = []
    var aliedPowers:[Nation] = []
    var neutrals:[Nation] = []
    
    init(_ begin:Time, _ end:Time)
    {
        self.begin = begin
        self.end = end
    }
    
    convenience init()
    {
        self.init(Time(1939, 9, 1), Time(1945, 9, 2))
    }
}

class AxisPowers : WorldWarII

{
    var nations:[Nation];
    
    override init(begin:String, end:String)
    {
        self.nations = [];
        super.init(begin:begin, end:end);
    }
}

func showAxisPowerNations()
{
    let axisNations = AxisPowers(begin:"1939.09.01", end:"1945.09.03")
    
    axisNations.nations += [Nation(name:"독일"), Nation(name:"일본"), Nation(name:"이탈리아"), Nation(name:"헝가리")]
    
    
    var printString = ""
    for nation in axisNations.nations
    {
        printString += nation.name
        printString += "\r\n"
    }
    
    print(printString)
}

import 'package:angle_on/class/channel.dart';
import 'package:angle_on/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ChannelCardDesign extends StatefulWidget {
  ChannelCard item;
  ChannelCardDesign({Key? key,required this.item}) : super(key: key);

  @override
  State<ChannelCardDesign> createState() => _ChannelCardDesignState();
}

class _ChannelCardDesignState extends State<ChannelCardDesign> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 4),
      child: Container(
        width: 110,
        // padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppConstants.thirdAngleOnColor,
          // image: DecorationImage(image: AssetImage(widget.item.channelImage))
        ),
        child: Image.asset(widget.item.channelImage),
      ),
    );
  }
}

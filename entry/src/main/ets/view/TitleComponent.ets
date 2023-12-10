@Component
export struct TitleComponent{
  @Link isSwitchData:boolean;
  build(){
    //标题栏
    Row() {
      Row() {
        Image($r('app.media.ic_public_back'))
          .width(22)
          .height(22)
          .margin({ right: 18 })

        Text('排行榜')
          .fontSize(20)
      }
      .width('50%')
      .height('100%')
      .justifyContent(FlexAlign.Start)

      Row() {
        Image($r('app.media.loading'))
          .width(22)
          .height(22)
          .onClick(()=>{
            this.isSwitchData = !this.isSwitchData;
          })
      }
      .width('50%')
      .height('100%')
      .justifyContent(FlexAlign.End)
    }
    .width('100%')
    .height(47)
    .padding({
      left: 26,
      right: 26
    })
    .margin({
      top: 10
    })
  }
}
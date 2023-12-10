import {Fruit, fruitsData, fruitsData2} from '../model/FruitModel'
import {TitleComponent} from '../view/TitleComponent'
import {FruitHeaderComponent} from '../view/FruitHeaderComponent'
import {FruitItemComponent} from '../view/FruitItemComponent'

@Entry
@Component
struct Index {
  fruitsData: Array<Fruit> = fruitsData
  fruitsData2: Array<Fruit> = fruitsData2
  @State isSwitchData:boolean = true

  build() {
    Column() {
      //标题栏
      TitleComponent({isSwitchData: $isSwitchData})

      //排行榜列表头
      FruitHeaderComponent()

      //列表项
      this.FruitList()
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f1f3f5')
  }

  @Builder FruitList() {
    //列表项
    Column() {
      List() {
        ForEach(this.isSwitchData ? this.fruitsData : this.fruitsData2, (item: Fruit)=>{
          ListItem() {
            FruitItemComponent({
              index: item.id,
              name: item.name,
              vote: item.vote.toString()
            })
          }
          .width('100%')
          .height(47)
        })
      }
      .width('90%')
      .padding(15)
      .backgroundColor(Color.White)
      .borderRadius(18)
    }
  }
}
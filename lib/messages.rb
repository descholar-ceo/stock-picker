module Messages
  STOCKPICKER_LOGO = '
      ______________    _______________     ______________      ____________
     /              \  |               |   /              \    /            \
    |    ______     |  |_____     _____|  |    _______     |  |    ______    |
    |   |      |    |        |   |        |   |       |    |  |   |      |   |
    |   |      |____|        |   |        |   |       |    |  |   |      |___|
    |   |___________         |   |        |   |       |    |  |   |
    |               |        |   |        |   |       |    |  |   |
    |__________     |        |   |        |   |       |    |  |   |
     ___       |    |        |   |        |   |       |    |  |   |       ___
    |   |      |    |        |   |        |   |       |    |  |   |      |   |
    |   |______|    |        |   |        |   |_______|    |  |   |______|   |
    |               |        |   |        |                |  |              |
     \______________/        |___|         \______________/    \____________/


    '.freeze

  WELCOME_MESSAGE = 'Hello there, welcome to the SOTOC software, this software helps you identify which day is best
  to sell and which day is best to buy stocks, you need to pass it the list of all the prices of the market, each
  price represent a specific day.
  Let\'s assume that you entered these prices: 17,3,6,9,15,8,6,1,10; these entries mean the following:
    day 1 the price was 17,
    day 2 the price was 3,
    day 3 the price was 6,
    day 4 the price was 9,
    day 5 the price was 15,
    day 6 the price was 8,
    day 7 the price was 6,
    day 8 the price was 1,
    day 9 the price was 10,

    So whenever you are going to enter your prices make sure to enter them respectively to their days, the STOC app,
     will analyze them and gives you the best day to sell stocks and the best day to buy stocks!'.freeze
  ENTER_SET_OF_DAY_PRICES = "\nEnter the set of your prices written in this way 100, 200, 500: ".freeze
  WANT_CONTINUE = "\nDo you want to continue? If you want to continue enter y otherwise enter any other key
    to terminate the STOC!".freeze
  def results
    'hello word'
  end
end

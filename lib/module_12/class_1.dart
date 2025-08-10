import 'package:flutter/material.dart';

class MoneyManagment extends StatefulWidget {
  const MoneyManagment({super.key});

  @override
  State<MoneyManagment> createState() => _MoneyManagmentState();
}

class _MoneyManagmentState extends State<MoneyManagment> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  List<Map<String,dynamic>> _expense = [];
  List<Map<String,dynamic>> _earning = [];

  double get totalExpense =>_expense.fold(0, (sum, item) => sum+item['amount']);
  double get totalEarning =>_earning.fold(0, (sum, item) => sum+item['amount']);
  double get balance => totalEarning - totalExpense;

  void _addEntry(String title,double amount, DateTime date,bool isEarning){
    setState(() {
      if(isEarning){
        _earning.add({"title" : title,
            "amount" : amount,
          "date": date,
        });
      }else{
        _expense.add({"title" : title,
          "amount" : amount,
          "date": date,
        });
      }
    });
  }

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _showFABOptions(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ),
                onPressed: (){
                  Navigator.pop(context);
                  _showForm(isEarning: true);
                }, child: Text('Add Earning')),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red
                ),
                onPressed: (){
                  Navigator.pop(context);
                  _showForm(isEarning: false);
                }, child: Text('Add Expense')),
          ],
        ),
      );
    });
  }

  void _showForm({required bool isEarning}){
   TextEditingController titleController = TextEditingController();
   TextEditingController amountController = TextEditingController();
   DateTime entryDate = DateTime.now();

    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
              Text(
                  isEarning ? 'Add Earning' : 'Add Expense',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            SizedBox(height: 10,),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10,),

            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isEarning ? Colors.green : Colors.red,
                  ),
                  onPressed: (){
                    if(titleController.text.isNotEmpty && amountController.text.isNotEmpty){
                      _addEntry(titleController.text, double.parse(amountController.text), entryDate, isEarning);
                      Navigator.pop(context);
                    }

                  }, child: Text(  isEarning ? 'Add Earning' : 'Add Expense',
              style: TextStyle(
                fontSize: 16
              ),
              )),
            )

          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text(
      'Money Managment',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    bottom: TabBar(
        controller: _tabController,
      tabs: [
      Tab(text: 'Earning', icon: Icon(Icons.arrow_upward)),
      Tab(text: 'Expense', icon: Icon(Icons.arrow_downward)),
      ],
    ),
  ),
body: Column(
  children: [
    Row(
      children: [
        _buildSummaryCard(title: 'Earning', value: totalEarning, color: Colors.green),
        _buildSummaryCard(title: 'Expense', value: totalExpense, color: Colors.red),
        _buildSummaryCard(title: 'Balance', value: balance, color: Colors.blue),
      ],
    ),

    SizedBox(height: 10,),

    Expanded(
      child: TabBarView(
          controller: _tabController,
          children: [
        _buildList(_earning, Colors.green, true),
        _buildList(_expense, Colors.red, false)
      ]),
    )
  ],
),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>_showFABOptions(context),
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget _buildSummaryCard({required String title,required double value,required Color color,}){
  return  Expanded(
    child: Card(
      color:  color,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(title,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
              ),
            ),
            Text(value.toString(),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ],
        ),
      ),
    ),
  );
}


Widget _buildList(List<Map<String,dynamic>>items, Color color,bool isEarning){
  return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: color.withOpacity(0.2),
              child: Icon(isEarning ? Icons.arrow_upward : Icons.arrow_downward,color: color,),
            ),
            title: Text(items[index]['title']),
            subtitle: Text(items[index]['date'].toString()),
            trailing: Text(
              '৳ ${items[index]['amount']}',
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold
              ),
            ),

          ),
        );
      });
}
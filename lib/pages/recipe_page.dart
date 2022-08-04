import 'package:flutter/material.dart';
import 'package:flutter_recipe/components/recipe_list_item.dart';
import 'package:flutter_recipe/components/recipe_menu.dart';
import 'package:flutter_recipe/components/recipe_list_item.dart';
import 'package:flutter_recipe/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 1. 배경색 white로 설정
      appBar: _buildRecipeAppBar(), // 2. 비어 있는 AppBar 연결해두기
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), // 3. 수평으로 여백주기
        child: Column(
          // 4. 위에서 아래로 내려가는 구조이기 때문에 Column 위젯 사용
          crossAxisAlignment: CrossAxisAlignment.start, // 5. 왼쪽 정렬
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made Burger"),
            RecipeListItem("pizza", "Made Pizza"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar();
  }
}

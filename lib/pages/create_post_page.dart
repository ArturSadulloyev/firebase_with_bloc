import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_add,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.messenger_outline,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                height: 450,
                width: 400,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          "assets/images/nature1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey.shade800,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                              top: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100),
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/images/nature1.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      "Emily L.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "From my post recent trip",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      CupertinoIcons.camera_fill,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        border: Border.all(
                                          color: Colors.grey.shade700,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Icon(
                                            Icons.messenger_outline_outlined,
                                            size: 15,
                                            color: Colors.grey.shade300,
                                          ),
                                          Text(
                                            "45",
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        border: Border.all(
                                          color: Colors.grey.shade700,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Icon(
                                            CupertinoIcons.heart,
                                            size: 15,
                                            color: Colors.grey.shade300,
                                          ),
                                          Text(
                                            "123",
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        border: Border.all(
                                          color: Colors.grey.shade700,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Icon(
                                            Icons.send,
                                            size: 15,
                                            color: Colors.grey.shade300,
                                          ),
                                          Text(
                                            "3",
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                height: 450,
                width: 400,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          "assets/images/nature2.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey.shade800,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                              top: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100),
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/images/nature2.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      "Emily L.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "From my post recent trip",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      CupertinoIcons.camera_fill,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        border: Border.all(
                                          color: Colors.grey.shade700,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Icon(
                                            Icons.messenger_outline_outlined,
                                            size: 15,
                                            color: Colors.grey.shade300,
                                          ),
                                          Text(
                                            "45",
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        border: Border.all(
                                          color: Colors.grey.shade700,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Icon(
                                            CupertinoIcons.heart,
                                            size: 15,
                                            color: Colors.grey.shade300,
                                          ),
                                          Text(
                                            "123",
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        border: Border.all(
                                          color: Colors.grey.shade700,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Icon(
                                            Icons.send,
                                            size: 15,
                                            color: Colors.grey.shade300,
                                          ),
                                          Text(
                                            "3",
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                height: 450,
                width: 400,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          "assets/images/nature3.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey.shade800,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                              top: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100),
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/images/nature3.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      "Emily L.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "From my post recent trip",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      CupertinoIcons.camera_fill,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        border: Border.all(
                                          color: Colors.grey.shade700,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Icon(
                                            Icons.messenger_outline_outlined,
                                            size: 15,
                                            color: Colors.grey.shade300,
                                          ),
                                          Text(
                                            "45",
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        border: Border.all(
                                          color: Colors.grey.shade700,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Icon(
                                            CupertinoIcons.heart,
                                            size: 15,
                                            color: Colors.grey.shade300,
                                          ),
                                          Text(
                                            "123",
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        border: Border.all(
                                          color: Colors.grey.shade700,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Icon(
                                            Icons.send,
                                            size: 15,
                                            color: Colors.grey.shade300,
                                          ),
                                          Text(
                                            "3",
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
